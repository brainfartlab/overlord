#!/bin/bash
SYNOLOGY_USER=$1
SYNOLOGY_KEY=$2
RSYNC_FILTERS_PATH=${3:-/usr/local/share/brainfartlab/synology/filters.txt}

timestamp=$(date +"%Y%m%d%H%M%S")

rsync -aivz \
  --max-size=50m \
  --exclude-from $RSYNC_FILTERS_PATH \
  -e "ssh -i $SYNOLOGY_KEY" \
  ~/Documents/ $SYNOLOGY_USER@synology:/volume1/backup/$SYNOLOGY_USER > $HOME/.backup/up-$timestamp.log
