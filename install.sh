#!/usr/bin/env zsh

if [ ! -f "doom_ascii.7z" ]; then
    echo "\033[0;31m[Ошибка]\033[0m Файл doom_ascii.7z не найден!"
    exit 1
fi

if ! command -v 7z &> /dev/null; then
    echo "\033[0;34m==>\033[0m Устанавливаем p7zip..."
    pkg install p7zip -y
fi

echo "\033[0;34m==>\033[0m Распаковываем игру..."
7z x doom_ascii.7z

echo "\033[0;32m==> Готово!\033[0m Всё распаковано в текущую папку."
