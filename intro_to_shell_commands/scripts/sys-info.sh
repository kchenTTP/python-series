#! /bin/bash

echo "=== System Information ==="
echo "Hostname: $(hostname)"
echo "Current User: $(whoami)"
echo "Current Directory: $(pwd)"
echo "Memory Usage:"
free -h
echo "Disk Usage:"
df -h

