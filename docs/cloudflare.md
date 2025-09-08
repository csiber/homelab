# Cloudflare Integration – Overview

My homelab is integrated with **Cloudflare** for secure remote access,  
DNS management, and edge services. This allows me to expose applications  
without direct port forwarding, while keeping latency low and availability high.  

---

## ☁️ Services in Use

- 🌐 **Cloudflare Tunnel** – secure access to Unraid, Docker apps, and Unifi Controller  
- 🧩 **DNS Proxy** – protects the real IP of the homelab, masks services behind Cloudflare  
- 📦 **R2 Object Storage** – cloud-based storage for backups and media files  
- 🗄️ **D1 Database (experimental)** – testing Cloudflare’s SQL edge database for SaaS apps  
- 🔑 **Access Policies** – optional authentication for sensitive apps  

---

## 🔒 Why Cloudflare?

- Eliminates the need for risky port forwarding  
- Built-in DDoS protection and global CDN  
- Easy domain and DNS management via dashboard or API  
- Simple integration with both SaaS apps and homelab services  
- Free tier is enough for most homelab use cases  

---

## 🗂️ Example: Cloudflare Tunnel Config

```yaml
tunnel: my-homelab-tunnel
credentials-file: /etc/cloudflared/credentials.json

ingress:
  - hostname: unraid.mydomain.com
    service: http://localhost:8080
  - hostname: plex.mydomain.com
    service: http://localhost:32400
  - hostname: nextcloud.mydomain.com
    service: http://localhost:8081
  - service: http_status:404
````

---

## 📌 Roadmap

* [ ] Add Zero Trust policies for admin apps (Unraid, Unifi)
* [ ] Automate DNS updates with scripts
* [ ] Expand use of R2 for offsite backups
* [ ] Test Cloudflare Workers for lightweight edge functions
* [ ] Evaluate Cloudflare Stream for media delivery

```
