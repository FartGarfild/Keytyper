#!/bin/bash

# Функция для получения текста из буфера обмена
get_clipboard_text() {
    xclip -o -selection clipboard
}

# Функция для эмуляции ввода текста
type_from_clipboard() {
    local text="$1"

    # Для получения фокуса на активное окно
    sleep 0.5

    # Эмуляция ввода текста посимвольно
    for ((i=0; i<${#text}; i++)); do
        xdotool type "${text:$i:1}"
        sleep 0.01
    done
}


# Основная функция
main() {
    local text=$(get_clipboard_text)
    type_from_clipboard "$text"
}

main
