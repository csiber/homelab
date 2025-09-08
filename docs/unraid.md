# Unraid Server – Overview

My homelab is powered by **Unraid**, running on Supermicro-based hardware.  
This setup provides a balance of **low noise, energy efficiency, expandability,  
and reliable storage management**.  

---

## ⚙️ Hardware

- **Chassis:** Unifi UAS-XG (Supermicro base)  
- **CPU:** Intel Xeon (low-power, efficient for 24/7)  
- **Memory:** DDR4 ECC RAM  
- **Storage:**  
  - Multiple HDDs for bulk storage  
  - NVMe SSD cache for fast access  
- **External GPU:** NVIDIA RTX 4060 Ti (passthrough enabled)  

---

## 🛠️ Services Running on Unraid

- **Docker Stacks:**  
  - Plex (media server)  
  - Nextcloud (private file cloud)  
  - Transmission (torrent client)  
  - Custom dev containers  

- **Virtual Machines:**  
  - Windows VM for GPU passthrough testing  
  - Linux VM for experiments  

- **Plugins:**  
  - CA Backup / Restore  
  - User Scripts  
  - GPU Statistics  

---

## 🎯 Why Unraid?

- Easy web UI for managing storage and Docker  
- Flexible disk configuration (expandable one-by-one, unlike strict RAID)  
- Cache layer for speed with NVMe drives  
- GPU passthrough support for VMs and containers  
- Strong community support and plugin ecosystem  

---

## 📸 Screenshots

*(to be added – Unraid dashboard, Docker tab, GPU monitoring)*  

---

## 📌 Roadmap

- [ ] Add monitoring stack (Prometheus + Grafana)  
- [ ] Expand Docker apps (AI services, additional media tools)  
- [ ] Test VM clustering for dev workloads  
- [ ] Improve backup strategy with offsite sync  
