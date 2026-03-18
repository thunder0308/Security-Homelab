#!/bin/bash
# Backup Pi-hole configuration to a local directory
BACKUP_DIR="./backups"
mkdir -p $BACKUP_DIR

echo "Exporting Pi-hole settings..."
docker exec pihole pihole -a -t "$BACKUP_DIR/pihole-backup-$(date +%F).tar.gz"
echo "Backup completed and saved in $BACKUP_DIR"
