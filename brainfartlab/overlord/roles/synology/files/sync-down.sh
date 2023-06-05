#!/bin/bash
SYNOLOGY_USER=$1
SYNOLOGY_KEY=$2

sleep 2
timestamp=$(date +"%Y%m%d%H%M%S")

rsync -aivz \
  -e "ssh -i $SYNOLOGY_KEY" \
  $SYNOLOGY_USER@synology:/volume1/backup/$SYNOLOGY_USER/ ~/Documents > $HOME/.backup/down-$timestamp.log
