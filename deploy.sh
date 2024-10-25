#!/usr/bin/env sh

# прерывание выполнения при ошибках
set -e

# сборка проекта
npm run build

# переход в папку со сборкой
cd dist

# если у вас есть собственный домен
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'
git branch -M main
git remote add origin git@github.com:Volodymyr-2024/Homework_10.git
git push -u origin main

# раскомментируйте нужную строку
# если вы деплоите в https://Volodymyr-2024.github.io
# git push -f git@github.com:Volodymyr-2024/Volodymyr-2024.github.io.git main

# если вы деплоите в https://Volodymyr-2024.github.io/Homework_10

git push -f git@github.com:Volodymyr-2024/Homework_10.git main:gh-pages

cd -