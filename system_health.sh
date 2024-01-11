#!/bin/bash

echo "System Health Diagnostics"
echo "====================="

# CPU Usage
echo "CPU Load:"
uptime | cut -d ',' -f 4-5

# Memory Usage
echo -e "\nMemory Usage:"
free -h | awk '/^Mem:/ {print $3 "/" $2}'

# Disk Usage
echo -e "\nDisk Usage:"
df -h | awk '$NF=="/"{print $5 " used (" $3 "/" $2 ")"}'

# Top Processes
echo -e "\nTop Processes:"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head

# System Uptime
echo -e "\nSystem Uptime:"
uptime -p

# Network Information
echo -e "\nNetwork Information:"
ip addr | awk '/inet / {print $2}'
