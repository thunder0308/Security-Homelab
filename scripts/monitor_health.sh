#!/bin/bash
# Simple Security & Health Audit Script

echo "--- [1] Checking Firewall (UFW) Status ---"
sudo ufw status | grep -i "Status"

echo -e "\n--- [2] Checking Docker Container Status ---"
docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"

echo -e "\n--- [3] Checking System Resource Usage ---"
free -h | awk '/^Mem:/ {print "Memory Usage: " $3 "/" $2}'
uptime -p
