# Docker Stacks – Overview

My homelab uses **Docker Compose** to run and manage multiple self-hosted applications.  
This approach allows me to quickly deploy, update, and maintain services with minimal overhead.  

---

## 🛠️ Current Stacks

- 🎬 **Plex** – media server for movies and TV shows  
- ☁️ **Nextcloud** – private cloud storage and collaboration suite  
- 📡 **Transmission** – torrent client with web UI  
- 🎵 **Navidrome / Otokai (experimental)** – music streaming and jukebox  
- 📂 **File Browser** – simple web-based file manager  
- 🧪 **Dev Stacks** – test containers for SaaS prototypes (HSWLP apps)  

---

## 📑 Example: Docker Compose (Plex + Transmission)

```yaml
version: "3.8"
services:
  plex:
    image: linuxserver/plex
    container_name: plex
    network_mode: host
    volumes:
      - /mnt/user/appdata/plex:/config
      - /mnt/user/media:/media
    restart: unless-stopped

  transmission:
    image: linuxserver/transmission
    container_name: transmission
    ports:
      - "9091:9091"
    volumes:
      - /mnt/user/appdata/transmission:/config
      - /mnt/user/downloads:/downloads
    restart: unless-stopped
````

---

## 🎯 Why Docker?

* Lightweight and resource-efficient
* Easy to spin up / tear down services
* Compose files make deployments repeatable
* Large ecosystem of community images
* Perfect for experimentation in a homelab

---

## 📌 Roadmap

* [ ] Add monitoring stack (Prometheus + Grafana)
* [ ] Deploy reverse proxy (Traefik or Nginx Proxy Manager)
* [ ] Integrate Portainer for easier management
* [ ] Expand with AI/ML services for experiments
* [ ] Document backup strategy for Docker volumes

```
