# Keytyper
Вводит текст с буфера обмена имитируя ввод клавиатуры.
!!Обязательно нужен xbindkeys, xdotool и xclip, сам скрипт их не устанавливает.
Файл xbindkeysrc должен иметь в начале точку и рассполагатся в папке home, иначе данный скрипт работать не будет из-за особенностей xbindkeys.
После создания  данного файла нужно перезапустить xbindkeys командой xbindkeys --poll-rc либо xbindkeys -p
Файл kbudy.sh может быть где угодно и называться как угодно главное указать к нему путь в файле .xbindkeysrc .
Данный скрипт задействуется при нажатии комбинации ctrl + shift + v
На некоторых системах не работает корректно русский язык.
