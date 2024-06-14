#!/bin/bash

if find /etc/apt/ -name "*.list" | xargs cat | grep -q '^[[:space:]]*deb.*backports'; then
    echo "репозиторий существует"
else
    sudo apt-add-repository 'deb http://ru.archive.ubuntu.com/ubuntu/ jammy-backports main restricted universe multiverse'
fi

sudo apt update && sudo apt upgrade -y

sudo apt install apache2
sudo systemctl enable apache2
sudo systemctl start apache2
service apache2 status

sudo apt install python3.11

sudo apt install openssh-server
sudo systemctl enable sshd
sudo systemctl status ssh

cat user.txt | awk '{print$1}' | xargs -n 1 useradd -m
for inst in `user.txt | awk '{print$1}'`
do
    touch /home/$inst/script && echo -e "mkdir report" > /home/$inst/script
done

chpasswd < pass.txt

sudo apt install wireshark
sudo dpkg-reconfigure wireshark-common
sudo usermod -a -G wireshark security

sudo snap install pycharm-community --classic


