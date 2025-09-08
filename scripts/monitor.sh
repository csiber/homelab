#!/bin/bash
# monitor.sh – Basic system resource monitor
# Author: Csiber

echo "System status at: $(date)"
echo "--------------------------------"
echo "CPU Load:"
uptime
echo
echo "Memory Usage:"
free -h
echo
echo "Disk Usage:"
df -h /mnt/user
