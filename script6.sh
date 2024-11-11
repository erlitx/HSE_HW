#!/bin/bash

echo "Читаем input.txt:"
cat input.txt

wc -l < input.txt > output.txt
echo "Количество строк записано в output.txt"

ls no_file 2> error.log
echo "Ошибки записаны в error.log"
