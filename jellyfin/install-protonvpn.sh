#!/usr/bin/env bash
# Link: https://github.com/Rafficer/linux-cli-community

app_name="Proton VPN"
echo "##########"
echo "Installing '${app_name}'"
echo "##########"

sudo apt install -y openvpn dialog python3-pip python3-setuptools
pip3 install protonvpn-cli
sudo protonvpn init
sudo protonvpn connect

echo "##########"
echo "Successfully installed '${app_name}'"
echo "##########"
