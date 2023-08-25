#!/usr/bin/env bash
# MediaInfo needed for Sonarr

app_name="MediaInfo"
echo "##########"
echo "Installing '${app_name}'"
echo "##########"

sudo wget https://mediaarea.net/repo/deb/repo-mediaarea_1.0-21_all.deb && sudo dpkg -i repo-mediaarea_1.0-21_all.deb && sudo apt-get update

echo "##########"
echo "Successfully installed '${app_name}'"
echo "##########"
