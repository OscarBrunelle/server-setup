#!/usr/bin/env bash
# Link: https://protonvpn.com/support/linux-ubuntu-vpn-setup/

app_name="Proton VPN"
echo "##########"
echo "Installing '${app_name}'"
echo "##########"

sudo wget "https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3_all.deb"
# To check the checksum:
# echo "c68a0b8dad58ab75080eed7cb989e5634fc88fca051703139c025352a6ee19ad  protonvpn-stable-release_1.0.3_all.deb" | sha256sum --check -
sudo apt-get install "/home/server/protonvpn-stable-release_1.0.3_all.deb"
sudo rm "/home/server/protonvpn-stable-release_1.0.3_all.deb*"

sudo apt-get update
sudo apt-get install protonvpn-cli
# sudo apt install gnome-shell-extension-appindicator gir1.2-appindicator3-0.1

echo "##########"
echo "Successfully installed '${app_name}'"
echo "##########"
