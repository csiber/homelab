# Lessons Learned

A few key takeaways from running and maintaining a homelab.

---

## RAID Rebuild Experience

- Learned that patience is key – array rebuilds can take days.  
- Always test backups before making changes.  

## GPU Passthrough Troubles

- First attempts failed due to BIOS/UEFI settings.  
- Proper IOMMU grouping is essential for stability.  

## Cloudflare Tunnel vs Port Forward

- Cloudflare Tunnel is safer, avoids exposing real IP.  
- DDoS protection comes "for free" with the proxy.  

## Automation Benefits

- Small scripts saved hours of manual maintenance.  
- Consistency and repeatability improved reliability.  

---
