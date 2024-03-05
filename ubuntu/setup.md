sudo apt update
sudo apt upgrade
sudo apt autoremove
sudo do-release-upgrade

sudo apt install git
sudo apt install cmake
sudo apt install curl

# VS Code
sudo snap install --classic code

# Steam
# Go to https://store.steampowered.com/about/ and download the .deb
# (https://cdn.akamai.steamstatic.com/client/installer/steam.deb) ?
# Then run
# sudo apt install ./steam_latest.deb

# Fix Python 3 issues when installing package: error: externally-managed-environment
# ref: (https://stackoverflow.com/questions/75608323/how-do-i-solve-error-externally-managed-environment-every-time-i-use-pip-3)
sudo mv /usr/lib/python3.11/EXTERNALLY-MANAGED /usr/lib/python3.11/EXTERNALLY-MANAGED.ol

# Zotify (download Spotify songs): https://github.com/zotify-dev/zotify
python -m pip install git+https://zotify.xyz/zotify/zotify.git
