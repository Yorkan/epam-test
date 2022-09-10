#!/bin/bash
case $1 in
help) echo  "You can use start|stop|restart|help for service" ;;
start) sleep 600 & echo  "Service started";;
    #var='pgrep sleep | awk '{print $!}''
    #echo $var 
    #kill -9 $var;;
stop) ps aux |grep [s]leep| kill -9 $(awk '{print $2}')
echo "Service stopped" ;;
restart) ps aux |grep [s]leep| kill -9 $(awk '{print $2}')
    echo "Service stopped"
    sleep 100 &
    echo "Service started"
;;
*) echo "Add parameter: start|stop|restart|help" ;;
esac