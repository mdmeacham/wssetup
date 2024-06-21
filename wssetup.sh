#!/bin/bash

sudo apt -y install neovim

sudo apt -y install tmux
echo 'test -z "$TMUX" && (tmux attach || tmux new-session)' >> ~/.bashrc

# Install node
wget -q -O - https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install 20

# install yarn
corepack enable

yarn global add @quasar/cli
PATH=$PATH:$(yarn global bin)
echo "PATH=$PATH:$(yarn global bin)" >> ~/.bashrc


# Install flameshot
sudo apt -y install flameshot

# 
