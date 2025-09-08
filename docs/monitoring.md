# Monitoring & Logs

To ensure stability and detect issues early, my homelab includes  
a lightweight monitoring stack.

---

## Tools in Use

- **Netdata** – real-time system metrics (CPU, RAM, disk, network)  
- **Grafana + Prometheus** (planned) – advanced dashboards and alerting  
- **Unraid built-in stats** – parity checks, drive health  

---

## Example Metrics

- CPU usage and temperature  
- Memory and swap utilization  
- Disk health (SMART status)  
- Network traffic per interface  
- Docker container resource usage  

---

## Roadmap

- [ ] Deploy Prometheus + Grafana  
- [ ] Set up alerting via email/Telegram  
- [ ] Add UPS monitoring (battery status, power events)  
- [ ] Centralize logs with Loki or ELK stack  
