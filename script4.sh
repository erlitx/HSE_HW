#!/bin/bash


hello() {
    local name=$1
    echo "Hello, $name"
}


sum() {
    local num1=$1
    local num2=$2
    echo $((num1 + num2))
}

# Вызов функции hello 
hello "HSE"

# Вызов функции sum 
result=$(sum 42 68)
echo "Сумма чисел 42 и 68: $result"
