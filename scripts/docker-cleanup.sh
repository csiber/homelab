#!/bin/bash
# docker-cleanup.sh – Remove unused Docker resources safely
# Author: Csiber

echo "Cleaning up Docker system..."
docker system prune -af --volumes

echo "Cleanup completed: $(date)"
