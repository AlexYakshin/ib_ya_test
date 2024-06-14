#!/bin/bash

tar cpf /media/alexyn/Trans/archive/archive_alexyn`date '+%d-%B-%Y'`.tar /home /var/log /etc/ssh/sshd_config /etc/xrdp /etc/vsftpd.config
cd /
tar dvf /media/alexyn/Trans/archive/archive_alexyn`date '+%d-%B-%Y'`.tar >> /home/alexyn/yfile.log

