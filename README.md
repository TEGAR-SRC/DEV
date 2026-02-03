Oke, gue paham 😅 **ini README.md FULL**, rapi, teknis, dan **tinggal COPY–PASTE**.
Isinya: **install + solusi network Docker /24 (before–after)**. Selesai.

````md
# Dokploy Installer Script

Installer otomatis Dokploy menggunakan satu perintah `curl | bash`.  
Dirancang untuk deploy cepat dan setup network Docker yang lebih aman.

---

## 📦 Requirement
- Linux (Ubuntu/Debian recommended)
- Docker sudah terinstall
- `curl`
- Akses `root` atau `sudo`

Install curl jika belum ada:
```bash
sudo apt update && sudo apt install -y curl
````

---

## 🚀 Install (One Command)

```bash
curl -sSL https://raw.githubusercontent.com/TEGAR-SRC/DEV/refs/heads/main/dokploy.sh | bash
```

### Recommended (root)

```bash
curl -sSL https://raw.githubusercontent.com/TEGAR-SRC/DEV/refs/heads/main/dokploy.sh | sudo bash
```

---

## 🔧 Solusi Network Docker (/16 → /24)

Secara default, network Docker menggunakan subnet terlalu besar (`/16`) yang bisa menyebabkan konflik routing.

### ❌ Before

```bash
docker network inspect dokploy-network --format '{{json .IPAM.Config}}'
```

```json
[{"Subnet":"10.11.0.0/16","Gateway":"10.11.0.1"}]
```

---

### ✅ After (Solusi)

#### 1️⃣ Hapus network lama

```bash
docker network rm dokploy-network
```

#### 2️⃣ Buat ulang network dengan subnet /24

```bash
docker network create \
  --subnet=10.11.0.0/24 \
  --gateway=10.11.0.1 \
  dokploy-network
```

#### 3️⃣ Verifikasi

```bash
docker network inspect dokploy-network --format '{{json .IPAM.Config}}'
```

```json
[{"Subnet":"10.11.0.0/24","Gateway":"10.11.0.1"}]
```

---

## ⚠️ Catatan Penting

* Pastikan **tidak ada container aktif** saat network dihapus
* Restart semua container setelah network diganti
* Subnet `/24` ideal untuk internal service (maks ±254 IP)
* Hindari bentrok dengan network lokal / VPN

---

## 🔐 Security Note

Disarankan cek isi script sebelum eksekusi:

```bash
curl -sSL https://raw.githubusercontent.com/TEGAR-SRC/DEV/refs/heads/main/dokploy.sh | less
```
## 👤 Author

**TEGAR-SRC**
