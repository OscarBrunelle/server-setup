#!/usr/bin/env bash

wget -o "/home/server/server-setup-files/protonvpn.deb" "https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3-2_all.deb"

# execute the script from terminal:
# wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/install-protonvpn.sh" | bash