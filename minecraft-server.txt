########################################

# Project: Minecraft server

####################
# Minecraft server
# Link to OVH tutorial: https://help.ovhcloud.com/csm/fr-vps-create-minecraft-server?id=kb_article_view&sysparm_article=KB0047645

sudo apt update
sudo apt full-upgrade
sudo apt install screen nano wget git
sudo apt install openjdk-21-jdk
sudo adduser minecraft --disabled-login --disabled-password
sudo su - minecraft

# Switched user to 'minecraft'

mkdir ~/server && cd ~/server
wget https://piston-data.mojang.com/v1/objects/84194a2f286ef7c14ed7ce0090dba59902951553/server.jar
echo "eula=true" > eula.txt
screen -S minecraft1

# Created a new shell to launch the server in
java -jar server.jar
# 'stop' to stop it

# To start the server after a restart:
sudo su - minecraft
cd ~/server
java -jar server.jar


# Accessing the server
# Once the installation is done, you should be able to access your server locally using "localhost", or you local ip ("192.168.x.y").
# To access it outside your own network, you'll need to redirect port 25565 (by default).
