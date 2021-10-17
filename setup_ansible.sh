#!/bin/bash

sudo apt update && sudo apt upgrade -y
sudo apt-add-repository ppa:ansible/ansible -y
echo '$export PATH="/home/$USER/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
#export PATH="/home/$USER/.local/bin:$PATH"
sudo apt install python3-pip -y && pip3 install --upgrade pip
pip3 install ansible
curl -O https://raw.githubusercontent.com/ansible-collections/azure/dev/requirements-azure.txt
pip3 install -r requirements-azure.txt
rm requirements-azure.txt
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash