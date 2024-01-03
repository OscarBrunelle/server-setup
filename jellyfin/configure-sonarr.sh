#!/usr/bin/env bash
# Web server url: http://localhost:8989

app_name="Sonarr"
echo "##########"
echo "Configuring '${app_name}'"
echo "##########"

# If can't select dl folder
sudo chown -R sonarr:media_server /media

# If needed to start / stop the service
# sudo systemctl start sonarr.service

echo "##########"
echo "Successfully configured '${app_name}'"
echo "##########"
