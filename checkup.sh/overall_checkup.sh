#!/bin/bash

echo "===== SYSTEM HEALTH CHECK ====="
echo "Date: $(date)"
echo

echo "🔹 CPU Load:"
uptime
echo

echo "🔹 Memory Usage:"
free -h
echo

echo "🔹 Disk Usage:"
df -h /
echo

echo "🔹 Top CPU-consuming processes:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -5
echo

echo "🔹 Top Memory-consuming processes:"
ps -eo pid,comm,%mem --sort=-%mem | head -5
echo

echo "===== HEALTH CHECK COMPLETE ====="
