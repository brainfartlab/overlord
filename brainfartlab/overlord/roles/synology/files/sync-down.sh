#!/bin/bash
sleep 2

if [ -z "$SSH_AGENT_PID" ]; then
  eval $(ssh-agent -s)
fi
ssh-add $HOME/.ssh/id_ed25519_synology

timestamp=$(date +"%Y%m%d%H%M%S")

rsync -aivz \
  brainfartlab@synology:/volume1/backup/brainfartlab/ ~/Documents > $HOME/backup/down/$timestamp.log
