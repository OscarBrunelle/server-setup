#!/usr/bin/env bash

app_name="Proton VPN"
echo "Installing '${app_name}'"

wget -o "/home/server/server-setup-files/protonvpn.deb" "https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3-2_all.deb"

echo "Successfully installed '${app_name}'"
