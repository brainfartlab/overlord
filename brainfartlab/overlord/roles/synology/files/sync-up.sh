#!/bin/bash
#if [ -z "$SSH_AGENT_PID" ]; then
#  eval $(ssh-agent -s)
#fi
#ssh-add $HOME/.ssh/id_ed25519_synology

timestamp=$(date +"%Y%m%d%H%M%S")

rsync -aivz \
  --exclude-from filters.txt \
  --delete \
  ~/Documents/ brainfartlab@synology:/volume1/backup/brainfartlab > $HOME/backup/up/$timestamp.log
