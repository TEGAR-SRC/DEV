#!/bin/bash

# =================================================================
# DOKPLOY TOTAL CLEANUP - RESET TO ZERO 1000%
# =================================================================

echo "--- 1. Menghapus Semua Docker Service (Swarm) ---"
docker service rm $(docker service ls -q) 2>/dev/null || true

echo "--- 2. Menghapus Semua Kontainer yang Berjalan ---"
docker rm -f $(docker ps -aq) 2>/dev/null || true

echo "--- 3. Keluar dari Docker Swarm Mode ---"
docker swarm leave --force 2>/dev/null || true

echo "--- 4. Menghapus Semua Volume (Data Database/Redis) ---"
docker volume rm $(docker volume ls -q) 2>/dev/null || true
docker volume prune -f 2>/dev/null || true

echo "--- 5. Menghapus Semua Network Custom ---"
docker network rm dokploy-network dokploy-network-v2 2>/dev/null || true
docker network prune -f 2>/dev/null || true

echo "--- 6. Menghapus Semua Docker Secrets (Password DB) ---"
docker secret rm $(docker secret ls -q) 2>/dev/null || true

echo "--- 7. Menghapus Folder Konfigurasi di Sistem ---"
rm -rf /etc/dokploy

echo "--- 8. Membersihkan Sisa-sisa Docker ---"
docker system prune -a --volumes -f

echo "---------------------------------------------------"
echo -e "\033[0;32mSERVER SUDAH BERSIH TOTAL (RESET ZERO)!\033[0m"
echo "Sekarang Anda bisa menjalankan script instalasi lagi."
echo "---------------------------------------------------"


# =================================================================
# DOKPLOY MEGA-SCALE INSTALLER (CLEAN START)
# =================================================================

set -e

echo "--- Tahap 1: Membersihkan Sisa Instalasi Lama (Reset to Zero) ---"
docker swarm leave --force 2>/dev/null || true
docker rm -f dokploy-traefik 2>/dev/null || true
rm -rf /etc/dokploy
echo "Server Bersih!"

echo "--- Tahap 2: Inisialisasi Docker Swarm ---"
# Mengambil IP Public otomatis
ADVERTISE_ADDR=$(curl -s ifconfig.me || hostname -I | awk '{print $1}')
docker swarm init --advertise-addr $ADVERTISE_ADDR

echo "--- Tahap 3: Membuat Network Raksasa (/16) ---"
# Ini kunci agar bisa menampung 65.000 kontainer
docker network create \
  --driver overlay \
  --attachable \
  --subnet 10.11.0.0/16 \
  dokploy-network

echo "--- Tahap 4: Setup Database & Password ---"
mkdir -p /etc/dokploy
chmod 777 /etc/dokploy
POSTGRES_PASSWORD=$(tr -dc 'A-Za-z0-9' < /dev/urandom | head -c 32)
echo "$POSTGRES_PASSWORD" | docker secret create dokploy_postgres_password -

echo "--- Tahap 5: Deploy Dokploy Core Services ---"

# 1. Postgres
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

# 2. Redis
docker service create \
  --name dokploy-redis \
  --network dokploy-network \
  --mount type=volume,source=dokploy-redis,target=/data \
  --constraint 'node.role==manager' \
  redis:7

# 3. Dokploy Panel
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

echo "--- Tahap 6: Deploy Traefik ---"
docker run -d \
  --name dokploy-traefik \
  --restart always \
  --network dokploy-network \
  -v /var/run/docker.sock:/var/run/docker.sock:ro \
  -v /etc/dokploy/traefik:/etc/traefik \
  -p 80:80 \
  -p 443:443 \
  traefik:v3.6.7

echo "---------------------------------------------------"
echo -e "\033[0;32mINSTALASI BERHASIL DARI NOL!\033[0m"
echo -e "Akses Dashboard: \033[1;33mhttp://$ADVERTISE_ADDR:3000\033[0m"
echo "---------------------------------------------------"
