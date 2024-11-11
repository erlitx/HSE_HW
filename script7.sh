
# Вот компанда для алиаса
alias ll='ls -la'

##### Чтобы сделать алиас на постоянке вот скрипт #####
#!/bin/bash

if ! grep -q "alias ll='ls -la'" ~/.bashrc; then
    echo "alias ll='ls -la'" >> ~/.bashrc
    echo "Alias 'll' добавлен в .bashrc"
else
    echo "Alias 'll' уже существует в .bashrc"
fi

# Обновляем
source ~/.bashrc

