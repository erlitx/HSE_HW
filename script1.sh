#!/bin/bash

# 1. Создание списка всех файлов в текущей директории с указанием их типа
output_file="file_list.txt"
> "$output_file"  # Очищаем файл перед записью

echo "1. Список файлов и их типов:"
for item in *; do
    if [ -f "$item" ]; then
        echo "$item - файл" 
    elif [ -d "$item" ]; then
        echo "$item - каталог" 
    elif [ -L "$item" ]; then
        echo "$item - символическая ссылка" 
    elif [ -c "$item" ]; then
        echo "$item - символьное устройство" 
    elif [ -b "$item" ]; then
        echo "$item - блочное устройство" 
    else
        echo "$item - неизвестный тип" 
    fi
done
echo -e "\n"

# 2. Проверка наличия определённого файла, если аргумент был передан
if [ $# -gt 0 ]; then
    file_to_check="$1"
    if [ -e "$file_to_check" ]; then
        echo "2. Файл '$file_to_check' существует."
    else
        echo "2. Файл '$file_to_check' не найден."
    fi
else
    echo "2. Имя файла для проверки не указано."
fi
echo -e "\n"

# 3. Вывод информации о каждом файле: его имя и права доступа
echo "3. Информация о каждом файле в текущей директории:"
for item in *; do
    permissions=$(ls -ld "$item" | awk '{print $1}')
    echo "Файл: $item, Права доступа: $permissions"
done
