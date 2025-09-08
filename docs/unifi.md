# Unifi Network – Overview

My homelab networking is built on the **Ubiquiti Unifi ecosystem**,  
centered around the **UDM Pro** as the main router and security gateway.  
This setup provides reliable routing, advanced firewall capabilities,  
and seamless integration with PoE devices and cameras.  

---

## ⚙️ Hardware

- **UDM Pro (Dream Machine Pro)** – router, firewall, controller  
- **Unifi 24p POE Switches:**  
  - PoE switch for powering APs and cameras  
  - Standard gigabit switch for other devices  
- **Access Points:** 2 Unifi APs for full home coverage  
- **Cameras:** 5 Unifi G5 Ultra Protect cameras connected via PoE  
- **Other integrations:** Unifi Siren PoE, 2 Unifi Access Ultra

---

## 🛠️ Key Features

- 🔐 **Firewall Rules & VLANs** – segmented network for lab, IoT, and guests  
- 📡 **Wi-Fi Coverage** – managed seamlessly with Unifi APs  
- 🎥 **Surveillance** – Unifi Protect integration for cameras  
- 📊 **Monitoring** – traffic insights, device stats, and alerts in the controller UI  
- 🌐 **Remote Access** – secure access through Cloudflare Tunnel (no direct port forwarding)  

---

## 🎯 Why Unifi?

- Single-pane-of-glass management for all network devices  
- Stable firmware and professional-grade features in a home setup  
- PoE simplifies deployment of APs and cameras  
- Integration with automation (API endpoints, scripts)  
- Scales well with new devices  

---

## 📸 Screenshots

*(to be added – Unifi Controller dashboard, topology view)*  

---

## 📌 Roadmap

- [ ] Document VLAN configuration in detail  
- [ ] Add example firewall JSON configs (anonymized)  
- [ ] Explore IDS/IPS performance tuning  
- [ ] Expand Wi-Fi coverage with additional APs  
