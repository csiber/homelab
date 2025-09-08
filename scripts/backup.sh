#!/bin/bash
# backup.sh – Simple backup script for Docker volumes
# Author: Csiber
# Usage: ./backup.sh

set -e

BACKUP_SRC="/mnt/user/appdata"
BACKUP_DEST="/mnt/user/backups/$(date +%Y-%m-%d)"
LOG_FILE="/mnt/user/backups/backup.log"

echo "Starting backup: $(date)" | tee -a "$LOG_FILE"

mkdir -p "$BACKUP_DEST"
rsync -av --delete "$BACKUP_SRC" "$BACKUP_DEST" | tee -a "$LOG_FILE"

echo "Backup completed: $(date)" | tee -a "$LOG_FILE"
