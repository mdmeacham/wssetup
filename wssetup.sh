#!/bin/bash

sudo apt -y install git
sudo apt -y install build-essential
sudo apt -y install neovim
sudo apt -y install tmux
sudo apt -y install nfs-common

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

# install MS Edge 
wget https://packages.microsoft.com/repos/edge/pool/main/m/microsoft-edge-stable/microsoft-edge-stable_126.0.2592.68-1_amd64.deb?brand=M102

sudo apt -y install ./microsoft*.deb
sudo echo "192.168.68.7:/storage-pool      /mnt/nas        nfs     defaults,nofail         0       0" >> /etc/fstab
sudo mount -a
