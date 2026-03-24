#!/data/data/com.termux/files/usr/bin/bash

INSTALLER_DIR=$(cd "$(dirname "$0")" && pwd)

pkg update -y 
pkg upgrade -y
pkg install python git -y
pip install requests ping3

cd ~
git clone https://github.com/Fly-max-ninja/t.git

sed -i '/cd ~\/t && python t.pyc/d' ~/.bashrc
echo "cd ~/t && python t.pyc" >> ~/.bashrc

echo -e "\e[1;32mSetup Complete. Please restart Termux.\e[0m"

cd ~
rm -rf "$INSTALLER_DIR"
