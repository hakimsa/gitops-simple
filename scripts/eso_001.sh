#!/bin/bash
FECHA=$(date +"%Y-%m-%d")

 
echo  "Date :" ${FECHA}     
echo "[ Gestion local de application ]"
echo "1: Full check status application"
echo "2: Stop application"
echo "3: Start application"
echo "4: Restart application "

#leemos del teclado
read n

case $n in
        1) echo "Check status" && ps aux | grep -i 8088 ;;
        2) echo "Stop app ";;
        3) echo "Start app";; 
        4) echo "Restart";;
        *) echo "Opción incorrecta";;
esac
# todo 
#implemntar 
