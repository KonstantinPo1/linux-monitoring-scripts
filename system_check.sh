#!/bin/bash

echo "===== SYSTEM INFORMATION ====="
hostname
uptime

echo ""
echo "===== CPU & MEMORY ====="
top -bn1 | head -5

echo ""
echo "===== DISK USAGE ====="
df -h

echo ""
echo "===== NETWORK CONNECTIONS ====="
ss -tulnp | head

echo ""
echo "===== FAILED SERVICES ====="
systemctl --failed

echo ""
echo "===== LAST LOGINS ====="
last | head
