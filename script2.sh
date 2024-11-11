#!/bin/bash


echo "Current PATH: $PATH"


if [ -z "$1" ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi


export PATH="$PATH:$1"
echo "Обновил PATH: $PATH"


# Текущий скрипт апдейтит переменную PATH только для текущей bash сессии, поэтому после
# завершения работы скрипта переменная PATH вернётся к исходному значению.
Вот так можно добавить изменения на постоянной основе:
#nano ~/.bashrc
#export PATH="$PATH:$1"
#запустить 
#source ~/.bashrc