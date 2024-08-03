#!/bin/bash
echo 'This will install dk-cmd.'
read key
echo 'Enter your `sudo` password if prompted.'
echo ''
sudo rm -rf /usr/local/bin/dk-cmd
sudo mkdir /usr/local/share/dk-cmd/
cd /usr/local/share/dk-cmd/
wget https://github.com/dk865/dk-cmd/archive/refs/heads/main.zip
unzip main.zip
cd dk-cmd-main
sudo mv dk-cmd /usr/local/bin
sudo mv . /usr/local/share/dk-cmd
cd /usr/local/share/dk-cmd
rm -rf main.zip
rm -rf dk-cmd-main
echo 'Successfully installed dk-cmd.'
echo 'To use the commands, run dk-cmd and follow through that.'
echo 'You may now delete this script. First, it will try to delete itself, but ignore any errors.'
read key
cd
rm -rf install.sh
exit