#!/bin/bash


read -p "Введите число: " number

if (( number > 0 )); then
    echo "Число положительное."
    count=1
    while (( count <= number )); do
        echo "$count"
        (( count++ ))
    done

elif (( number < 0 )); then
    echo "Число отрицательное."

else
    echo "Число равно нулю."
fi