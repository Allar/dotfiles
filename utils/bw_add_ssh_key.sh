#!/bin/bash

# https://dev.to/jmc265/using-bitwarden-and-chezmoi-to-manage-ssh-keys-5hfm

if [ -z "${BW_SSH_NAME+set}" ]
then
  read -p "Your Bitwarden SSH Key Item Name (\"SSH Key\"): " BW_SSH_NAME
fi

# add ssh key to bitwarden
bw get template item | jq ".name=\"$BW_SSH_NAME\"" | jq ".login=$(bw get template item.login)" | jq ".login.username=\"$(cat ~/.ssh/id_ed25519.pub)\"" | jq ".login.password=\"$(sed -e ':a' -e 'N' -e '$!ba' -e 's/\n/\\\\n/g' ~/.ssh/id_ed25519)\"" | bw encode | bw create item
