#!/usr/bin/env bash
# Link: https://www.mono-project.com/download/stable/#download-lin-debian
# Link : https://sushihangover.github.io/mono-ubuntu-broken/
# Mono needed for Sonarr

app_name="Mono"
echo "##########"
echo "Installing '${app_name}'"
echo "##########"

sudo apt install dirmngr ca-certificates gnupg
sudo gpg --homedir /tmp --no-default-keyring --keyring /usr/share/keyrings/mono-official-archive-keyring.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb [signed-by=/usr/share/keyrings/mono-official-archive-keyring.gpg] https://download.mono-project.com/repo/debian stable-buster main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update

wget http://ftp.br.debian.org/debian/pool/main/libj/libjpeg-turbo/libjpeg62-turbo_2.1.5-2_amd64.deb
wget http://ftp.br.debian.org/debian/pool/main/libj/libjpeg6b/libjpeg62_6b2-3.1_amd64.deb
sudo dpkg --install --recursive --auto-deconfigure /home/server/libjpeg62-turbo_2.1.5-2_amd64.deb
apt-get update
sudo apt-get -f install

sudo apt install mono-devel
sudo apt install monodevelop

echo "##########"
echo "Successfully installed '${app_name}'"
echo "##########"
