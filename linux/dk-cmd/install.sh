#!/bin/bash

echo 'This will install dk-cmd.'
read -p 'Press any key to continue...'

echo 'Enter your `sudo` password if prompted.'
echo ''

sudo rm -rf /usr/local/bin/dk-cmd
sudo rm -rf /usr/local/share/dk-cmd

sudo mkdir -p /usr/local/share/dk-cmd/

cd /usr/local/share/dk-cmd/ || { echo "Failed to change directory"; exit 1; }
wget -q https://github.com/dk865/dk-cmd/archive/refs/heads/main.zip || { echo "Failed to download dk-cmd"; exit 1; }
unzip -q main.zip || { echo "Failed to unzip dk-cmd"; exit 1; }
cd dk-cmd-main || { echo "Failed to change directory"; exit 1; }

sudo mv dk-cmd /usr/local/bin/ || { echo "Failed to move dk-cmd"; exit 1; }

cd /usr/local/share/dk-cmd || { echo "Failed to change directory"; exit 1; }
rm -f main.zip
rm -rf dk-cmd-main

echo 'Successfully installed dk-cmd.'
echo 'To use the commands, run dk-cmd and follow the instructions provided.'
echo 'You may now delete this script if you wish. It will attempt to remove itself, but ignore any errors.'

SCRIPT_PATH=$(readlink -f "$0")
rm -f "$SCRIPT_PATH"

exit 0
