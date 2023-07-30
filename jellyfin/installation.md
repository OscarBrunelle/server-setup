########################################

# Project: Jellyfin media server

####################

# Proton VPN
# Link: https://protonvpn.com/support/linux-ubuntu-vpn-setup/

# To check the checksum:
# echo "c68a0b8dad58ab75080eed7cb989e5634fc88fca051703139c025352a6ee19ad  protonvpn-stable-release_1.0.3-2_all.deb" | sha256sum --check -

sudo apt-get update
sudo apt-get install protonvpn
sudo apt install gnome-shell-extension-appindicator gir1.2-appindicator3-0.1

####################

# QBitTorrent
# Link: https://doc.ubuntu-fr.org/qbittorrent

sudo apt install qbittorrent

####################

# Jellyfin
# http://localhost:8096/web/index.html
# Link: https://doc.ubuntu-fr.org/jellyfin

sudo apt install apt-transport-https
sudo add-apt-repository universe
wget -O - https://repo.jellyfin.org/ubuntu/jellyfin_team.gpg.key | sudo apt-key add -
echo "deb [arch=$( dpkg --print-architecture )] https://repo.jellyfin.org/ubuntu $( lsb_release -c -s ) main" | sudo tee /etc/apt/sources.list.d/jellyfin.list
sudo apt update
sudo apt install jellyfin

# if the server webpage shows nothing

sudo ln -s /usr/share/jellyfin/web/ /usr/lib/jellyfin/bin/jellyfin-web
sudo apt purge jellyfin-web
sudo apt update
sudo apt install jellyfin-web
sudo systemctl restart jellyfin.services

####################

# Mono needed for Sonarr
#Link: https://www.mono-project.com/download/stable/#download-lin-debian

sudo apt install dirmngr ca-certificates gnupg
sudo gpg --homedir /tmp --no-default-keyring --keyring /usr/share/keyrings/mono-official-archive-keyring.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb [signed-by=/usr/share/keyrings/mono-official-archive-keyring.gpg] https://download.mono-project.com/repo/debian stable-buster main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
sudo apt install mono-devel

# If can't select dl folder
sudo chown -R sonarr:sonarr /media

####################

# MediaInfo (adding repository for later Sonarr installation ?)
sudo wget https://mediaarea.net/repo/deb/repo-mediaarea_1.0-21_all.deb && sudo dpkg -i repo-mediaarea_1.0-21_all.deb && sudo apt-get update

####################

# Sonarr
# http://localhost:8989
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 2009837CBFFD68F45BC180471F4F90DE2A9B4BF8
echo "deb https://apt.sonarr.tv/debian buster main" | sudo tee /etc/apt/sources.list.d/sonarr.list
sudo apt update
sudo apt install sonarr

# If needed to start / stop the service
# sudo systemctl start sonarr.service

####################

# Jackett
# http://localhost:9117/
cd /opt && f=Jackett.Binaries.LinuxAMDx64.tar.gz && release=$(wget -q https://github.com/Jackett/Jackett/releases/latest -O - | grep "title>Release" | cut -d " " -f 4) && sudo wget -Nc https://github.com/Jackett/Jackett/releases/download/$release/"$f" && sudo tar -xzf "$f" && sudo rm -f "$f" && cd Jackett* && sudo ./install_service_systemd.sh && systemctl status jackett.service && cd - && echo -e "\nVisit http://127.0.0.1:9117"









# Other commands if needed:
# Moving a folder
mv /home/o/Downloads/Death\ Note/ /media/series/Death\ Note
