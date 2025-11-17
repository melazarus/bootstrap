#!/usr/bin/env sh
addgroup hans
adduser -D -G hans hans

if [ $(getent group sudo) ]; then
  addgroup hans sudo
fi

# Source - https://stackoverflow.com/a
# Posted by lhunath, modified by community. See post 'Timeline' for change history
# Retrieved 2025-11-17, License - CC BY-SA 4.0
if command -v wget >/dev/null 2>&1
then
   mkdir -p $HOME/.ssh
   chmod 700 $HOME/.ssh
   wget "https://raw.githubusercontent.com/melazarus/bootstrap/refs/heads/main/public_keys/id_ed25519.pub" -O 
"$HOME/.ssh/authorized_keys"
   chmod 600 $HOME/.ssh/*
fi

