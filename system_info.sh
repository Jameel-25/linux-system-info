#!/bin/bash
# Linux System Information Script

echo "=========================================================================================="
echo " System Information"
echo "=========================================================================================="

# Display Current Date and Time
echo "Current Date and Time: $(date)"

# Display System Uptime
echo "System Uptime: $(uptime -p)"

# Display Disk Usage
echo "Disk Usage"
df -h | grep '^/dev/'

# Display Memory Usage
echo "Memory Usage:"
free -h

# Display Top 5 Processes by CPU Usage
echo "Top 5 CPU-consuming processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6

# Display Network Informationn (IP address)
echo "Network Information (IP address):"
ip addr show | grep "inet" | awk '{print $2}' | grep -v '127.0.0.1'

echo "=========================================================================================="
