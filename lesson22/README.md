# lesson22

Данный репозитарий содержит скрипт, который получает в качестве оргумента файл со списком плагинов и версий и скачивает из официального репозитария эти плагины. Если какого-либо плагина нет требуемой версии, пишет в файл file.txt в текущей директории.

Для работы скрипта нужно сделать следующие действия.

1. Скопировать скрипт на сервер, скопировать файл со списком плагинов.

2. Дать права на исполнение для файла скрипта командой:
chmod +x scriptl2.sh

3. Запустить скрипт с аргументом через пробел - именем файла со списком плагинов:
./scriptl2.sh plugins.txt

4. Проконтролировать появление в папке /opt/plugins/ файлов плагинов.

5. Просмотреть файлик file.txt на наличие записи "Plugin ... not found...". Такие плагины не скачались, так как их не оказалось в репозитарии.
