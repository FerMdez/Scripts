#!/bin/bash
# Fernando Méndez
# 08/12/2020

clear
echo " *** SCRIPT PARA EL APAGADO DEL EQUIPO *** "
echo " SELECCIONA UNA OPCIÓN:"
echo " 1.-Apagar equipo ahora"
echo " 2.-Reiniciar equipo ahora"
echo " 3.-Asignar hora de apagado del equipo"
echo " 4.-Apagar equipo a los xx minutos"
echo " 5.-Salir"
echo ""
read -p "OPCIÓN: " OPCION
case $OPCION in
1) sudo halt;;
2) sudo reboot;;
3) echo -n " ¿ A qué hora ?: "
read hora
sudo shutdown -h $hora;;
4)echo -n " ¿ En cuántos minutos se apagará el equipo?: "
read minutos
sudo shutdown -h $minutos;;
5) exit;;
*) echo " OPCIÓN NO VÁLIDA "
exit 1;;
esac
exit 0
