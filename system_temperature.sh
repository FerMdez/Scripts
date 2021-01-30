#!/bin/bash

 echo "$(date) @ $(hostname)"
 echo "-------------------------------------------"
 sensors
 echo "-------------------------------------------"

 echo "$(date) @ $(hostname)" >> /home/admin/Logs/log_temp
 echo "-------------------------------------------" >> /home/admin/Logs/log_temp
 sensors >> /home/admin/Logs/log_temp
 echo "-------------------------------------------" >> /home/admin/Logs/log_temp


#Fernando Méndez, 01/11/2019
