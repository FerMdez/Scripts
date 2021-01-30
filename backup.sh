#!/bin/bash

tar cvf /home/admin/Backups/server_backup.tar /var/www #Web-Server Backup
tar cvf /home/admin/Backups/apache2_backup.tar /etc/apache2/ #Apache config Backup
tar cvf /home/admin/Backups/ssl_backup.tar /etc/ssl/ #SSL certs Backup
tar cvf /home/admin/Backups/cron.tar /etc/cron.daily #Scripts Backup
tar cvf /home/admin/Backups/logs.tar /home/admin/Logs #Logs Backup

tar -zcf /home/admin/Backups/home.tgz /home/ #Home Backup

date > /home/admin/Backups/log_backup #Logs

#30/10/2019 Fernando Méndez Torrubiano
