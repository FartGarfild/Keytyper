# Keytyper
Вводит текст с буфера обмена имитируя ввод клавиатуры.
Обязательно нужен xbindkeys, xdotool и xclip, сам скрипт их не устанавливает.
Файл xbindkeysrc должен имень в начале точку и рассполагатся в папке home иначе данный скрипт работать не будет из-за особенностей xbindkeys.
После создания  данного файла нужно перезапустить xbindkeys командой xbindkeys --poll-rc
Файл kbudy.sh может быть где угодно и называться как угодно.
Данный скрипт задействуется при нажатии комбинации ctrl + shift + v
