#!/usr/bin/env bash
# Link: https://protonvpn.com/support/linux-ubuntu-vpn-setup/

app_name="Proton VPN"
echo "##########"
echo "Installing '${app_name}'"
echo "##########"

wget -o "/home/server/server-setup-files/protonvpn.deb" "https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3-2_all.deb"
# To check the checksum:
# echo "c68a0b8dad58ab75080eed7cb989e5634fc88fca051703139c025352a6ee19ad  protonvpn-stable-release_1.0.3-2_all.deb" | sha256sum --check -

sudo apt-get install protonvpn
# sudo apt install gnome-shell-extension-appindicator gir1.2-appindicator3-0.1

echo "##########"
echo "Successfully installed '${app_name}'"
echo "##########"
