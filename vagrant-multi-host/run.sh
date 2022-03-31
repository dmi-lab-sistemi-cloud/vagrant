#!/bin/bash

# Create 2 VMs: host1 and host2
echo ""
echo "[*] Create 2 VMs: host1 and host2"
vagrant up

# List available VMs
echo ""
echo "[*] List available VMs"
vagrant global-status

# Show each VM status
echo ""
echo "[*] Show each VM status"
vagrant status host1
vagrant status host2

# Run ifconfig on host1 (192.168.60.4)
echo ""
echo "[*] Run ifconfig on host1 (192.168.60.4)"
vagrant ssh host1 -c ifconfig

# Run ifconfig on host2 (192.168.60.5)
echo ""
echo "[*] Run ifconfig on host2 (192.168.60.5)"
vagrant ssh host2 -c ifconfig

# Test private network from host1 to host2
echo ""
echo "[*] Test private network from host1 to host2"
vagrant ssh host1 -c "ping -c 5 192.168.60.5"

# Choose whether to destroy the two VMs
echo ""
echo "[*] Choose whether to destroy the two VMs"
vagrant destroy
