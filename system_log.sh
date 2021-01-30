#!/bin/bash

#Fernando Méndez, 15/12/2019.


# - Cabecera:
echo -e "\e[1;32m--------------INFORME DEL DÍA--------------\e[0m" >> /home/admin/Logs/system
echo "$(date) @ $(hostname)" >> /home/admin/Logs/system
echo -e "\e[1;32m-------------------------------------------\e[0m" >> /home/admin/Logs/system
# -Información del equipo:
echo -e "\e[31;43m ***** INFORMACIÓN DEL HOSTNAME ***** \e[0m" >> /home/admin/Logs/system
hostnamectl >> /home/admin/Logs/system
echo "" >> /home/admin/Logs/system
# -El uso del espacio en disco del sistema de archivos:
echo -e "\e[31;43m ***** SISTEMA DE FICHEROS / ESPACIO UTILIZADO EN DISCO ***** \e[0m" >> /home/admin/Logs/system
df -h >> /home/admin/Logs/system
echo "" >> /home/admin/Logs/system
# - Memoria libre y usada en el sistema:
echo -e "\e[31;43m ***** MEMORIA UTILIZADA Y LIBRE ***** \e[0m" >> /home/admin/Logs/system
free >> /home/admin/Logs/system
echo "" >> /home/admin/Logs/system
# -Sistema de tiempo de actividad y carga:
echo -e "\e[31;43m ***** TIEMPO Y CARGA DEL SISTEMA ***** \e[0m" >> /home/admin/Logs/system
uptime >> /home/admin/Logs/system
echo "" >> /home/admin/Logs/system
# -Usuarios Conectados:
echo -e "\e[31;43m ***** USUARIOS ACTUALMENTE REGISTRADOS ***** \e[0m" >> /home/admin/Logs/system
who >> /home/admin/Logs/system
echo "" >> /home/admin/Logs/system
# -Top 5 procesos en lo que respecta al uso de memoria
echo -e "\e[31;43m ***** TOP 5 PROCESOS DE CONSUMO DE MEMORIA ***** \e[0m" >> /home/admin/Logs/system
ps -eo %mem,%cpu,comm --sort=-%mem | head -n 6 >> /home/admin/Logs/system
echo "" >> /home/admin/Logs/system
echo -e "\e[1;32m-------------FIN DEL INFORME--------------\e[0m" >> /home/admin/Logs/system
