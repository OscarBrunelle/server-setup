#!/usr/bin/env bash

app_name="Jackett"
echo "##########"
echo "Installing '${app_name}'"
echo "##########"

sudo useradd jackett
sudo usermod -a -G media_server jackett

cd /opt && f=Jackett.Binaries.LinuxAMDx64.tar.gz && release=$(wget -q https://github.com/Jackett/Jackett/releases/latest -O - | grep "title>Release" | cut -d " " -f 4) && sudo wget -Nc https://github.com/Jackett/Jackett/releases/download/$release/"$f" && sudo tar -xzf "$f" && sudo rm -f "$f" && cd Jackett* && sudo ./install_service_systemd.sh && systemctl status jackett.service && cd - && echo -e "\nVisit http://127.0.0.1:9117"

echo "##########"
echo "Successfully installed '${app_name}'"
echo "##########"

wget -O - "https://github.com/OscarBrunelle/server-setup/raw/main/jellyfin/configure-jackett.sh" | bash
