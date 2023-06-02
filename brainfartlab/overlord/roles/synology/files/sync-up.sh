#!/bin/bash
timestamp=$(date +"%Y%m%d%H%M%S")

rsync -aivz \
  --exclude-from filters.txt \
  ~/Documents/ brainfartlab@synology:/volume1/backup/brainfartlab > $HOME/backup/up/$timestamp.log
