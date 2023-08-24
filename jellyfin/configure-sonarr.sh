#!/usr/bin/env bash
# Web server url: http://localhost:8989

app_name="Sonarr"
echo "Configuring '${app_name}'"

# If can't select dl folder
sudo chown -R sonarr:sonarr /media

# If needed to start / stop the service
# sudo systemctl start sonarr.service

echo "Successfully configured '${app_name}'"
