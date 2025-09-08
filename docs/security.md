# Security & Hardening

Security is essential in a homelab environment.  
Even for personal projects, I apply best practices to reduce risks.

---

## Key Measures

- 🔑 **SSH Hardening** – key-based auth, disable root login, custom ports  
- 🔒 **Fail2ban** – brute force protection for SSH and services  
- 🌐 **Firewall & VLANs** – isolate IoT devices from LAN  
- 🛡️ **Cloudflare Proxy** – hides real IP, adds DDoS protection  
- 🔐 **Strong Passwords & 2FA** – for Unraid, Unifi, and critical apps  

---

## Example SSH Config

```bash
# /etc/ssh/sshd_config
PermitRootLogin no
PasswordAuthentication no
AllowUsers csiber
```

Roadmap

 Document VLAN firewall rules in detail

 Deploy IDS/IPS (Suricata or Unifi Threat Management)

 Enable Zero Trust Cloudflare Access for admin services


---

## 🟦 `docs/backup.md`

```markdown
# Backup & Recovery

A strong backup strategy is critical to protect homelab data.

---

## Strategy

- 🗂️ **Docker volumes** → rsync to local backup drive (daily)  
- ☁️ **Critical configs** → sync to Cloudflare R2 (encrypted)  
- 📀 **VM snapshots** → stored on NVMe cache, rotated weekly  
- 🔄 **Parity checks** → monthly Unraid array verification  

---

## Example: rsync backup script

```bash
rsync -av --delete /mnt/user/appdata/ /mnt/user/backups/appdata/

Roadmap

 Add offsite backup sync (R2 or Backblaze B2)

 Automate with cron + notification system

 Test disaster recovery scenarios