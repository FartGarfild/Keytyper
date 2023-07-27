#!/bin/bash

# Получаем текст из буфера обмена
get_clipboard_text() {
    xclip -o -selection clipboard
}

# Вводим текст из буфера обмена
type_from_clipboard() {
    local text="$1"

    # Ожидаем 2 секунды перед началом ввода, чтобы переключиться на окно или поле
    sleep 1

    # Эмулируем нажатия клавиш для ввода текста
    xdotool type --delay 50 "$text"
}

# Основная функция
main() {
    check_packages

    # Получаем текст из буфера обмена
    local text=$(get_clipboard_text)

    # Вводим текст
    type_from_clipboard "$text"
}

main

