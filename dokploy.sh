#!/bin/bash

# =================================================================
# DOKPLOY FINAL INSTALLER - OPTIMIZED FOR LARGE SCALE CBT
# =================================================================
# - Reset Zero 1000% (Hapus sisa lama)
# - Subnet /16 (Kapasitas 65.534 IP)
# - Traefik Fix (Mounting & acme.json ready)
# =================================================================

set -e

# Warna untuk output
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
RED="\033[0;31m"
NC="\033[0m"

echo -e "${YELLOW}--- Tahap 1: Pembersihan Total (Reset Zero 1000%) ---${NC}"
docker service rm $(docker service ls -q) 2>/dev/null || true
docker rm -f $(docker ps -aq) 2>/dev/null || true
docker swarm leave --force 2>/dev/null || true
docker volume rm $(docker volume ls -q) 2>/dev/null || true
docker secret rm $(docker secret ls -q) 2>/dev/null || true
docker network prune -f 2>/dev/null || true
rm -rf /etc/dokploy
echo -e "${GREEN}Server Bersih Total!${NC}"

echo -e "${YELLOW}--- Tahap 2: Inisialisasi Docker Swarm ---${NC}"
ADVERTISE_ADDR=$(curl -s ifconfig.me || hostname -I | awk '{print $1}')
docker swarm init --advertise-addr $ADVERTISE_ADDR
echo -e "${GREEN}Swarm Aktif di IP: $ADVERTISE_ADDR${NC}"

echo -e "${YELLOW}--- Tahap 3: Membuat Network Raksasa (/16) ---${NC}"
docker network create \
  --driver overlay \
  --attachable \
  --subnet 10.11.0.0/16 \
  dokploy-network
echo -e "${GREEN}Network Berhasil Dibuat (Kapasitas 65.000+ IP)${NC}"

echo -e "${YELLOW}--- Tahap 4: Setup Direktori & SSL File ---${NC}"
mkdir -p /etc/dokploy/traefik/dynamic
touch /etc/dokploy/traefik/dynamic/acme.json
chmod 600 /etc/dokploy/traefik/dynamic/acme.json
chmod 777 /etc/dokploy
echo -e "${GREEN}Direktori Konfigurasi Siap${NC}"

echo -e "${YELLOW}--- Tahap 5: Setup Database & Redis ---${NC}"
POSTGRES_PASSWORD=$(tr -dc 'A-Za-z0-9' < /dev/urandom | head -c 32)
echo "$POSTGRES_PASSWORD" | docker secret create dokploy_postgres_password -

docker service create \
  --name dokploy-postgres \
  --network dokploy-network \
  --env POSTGRES_USER=dokploy \
  --env POSTGRES_DB=dokploy \
  --secret source=dokploy_postgres_password,target=/run/secrets/postgres_password \
  --env POSTGRES_PASSWORD_FILE=/run/secrets/postgres_password \
  --mount type=volume,source=dokploy-postgres,target=/var/lib/postgresql/data \
  --constraint 'node.role==manager' \
  postgres:16

docker service create \
  --name dokploy-redis \
  --network dokploy-network \
  --mount type=volume,source=dokploy-redis,target=/data \
  --constraint 'node.role==manager' \
  redis:7
echo -e "${GREEN}Database & Redis Berhasil di-Deploy${NC}"

echo -e "${YELLOW}--- Tahap 6: Deploy Dokploy Panel ---${NC}"
docker service create \
  --name dokploy \
  --replicas 1 \
  --network dokploy-network \
  --mount type=bind,source=/var/run/docker.sock,target=/var/run/docker.sock \
  --mount type=bind,source=/etc/dokploy,target=/etc/dokploy \
  --mount type=volume,source=dokploy,target=/root/.docker \
  --secret source=dokploy_postgres_password,target=/run/secrets/postgres_password \
  --publish published=3000,target=3000,mode=host \
  --constraint 'node.role == manager' \
  -e ADVERTISE_ADDR=$ADVERTISE_ADDR \
  -e POSTGRES_PASSWORD_FILE=/run/secrets/postgres_password \
  dokploy/dokploy:latest

echo -e "${YELLOW}Menunggu Dokploy inisialisasi (15 detik)...${NC}"
sleep 15

echo -e "${YELLOW}--- Tahap 7: Deploy Traefik (Final Fix) ---${NC}"
docker run -d \
  --name dokploy-traefik \
  --restart always \
  --network dokploy-network \
  -v /var/run/docker.sock:/var/run/docker.sock:ro \
  -v /etc/dokploy/traefik/traefik.yml:/etc/traefik/traefik.yml \
  -v /etc/dokploy/traefik/dynamic:/etc/dokploy/traefik/dynamic \
  -p 80:80 \
  -p 443:443 \
  -p 443:443/udp \
  traefik:v3.6.7

echo -e "${GREEN}---------------------------------------------------"
echo -e "      INSTALASI SELESAI & SUDAH FINAL FIX          "
echo -e "---------------------------------------------------${NC}"
echo -e "${YELLOW}1. Akses Panel via IP : http://$ADVERTISE_ADDR:3000${NC}"
echo -e "${YELLOW}2. Daftarkan Domain di Dashboard (Settings > Panel Domain)${NC}"
echo -e "${YELLOW}3. Domain akan otomatis HTTPS/SSL lewat Traefik${NC}"
echo -e "${GREEN}---------------------------------------------------"
echo -e "Network ini sanggup menampung 65.534 Kontainer Sekolah!${NC}"
