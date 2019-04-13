#!/bin/bash

# Get ansible verions
. ./variables/ansible-version

# Ansible prerequisites

sudo apt-get install python3-setuptools asciidoc devscripts python-dev libffi-dev libssl-dev cdbs sshpass -y

pip3 install ansible==$ANSIBLE_VERSION
# # Node Version Manager

# curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# # Node

# nvm install NODE_VERSION

# # PM2

# npm install -g pm2@$PM2_VERSION

# ansible

