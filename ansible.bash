sudo apt update
sudo apt upgrade
sudo apt-add-repository ppa:ansible/ansible
sudo apt install python3-pip
pip3 install --upgrade-pip
export PATH="/home/jc/.local/bin:$PATH"
pip3 install ansible
curl -O https://raw.githubusercontent.com/ansible-collections/azure/dev/requirements-azure.txt
pip3 install -r requirements.txt
rm requirements.txt
https://aka.ms/InstallAzureCLIDeb | sudo bash