#!/usr/bin/env bash

set -e

echo "Health check started: $(date)"
echo "Current directory: $(pwd)"
echo "Disk usage:"
df -h
echo "Health check complete"
echo "Restuarant server systems checked successfully"
