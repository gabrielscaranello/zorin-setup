#! /bin/sh

# Install NVM
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# Set node 18 as default
nvm install 18
nvm use 18

# Install yarn as global
npm i -g yarn

# Global node packages
yarn global add \
@nestjs/cli \
@quasar/cli \
@vue/cli

