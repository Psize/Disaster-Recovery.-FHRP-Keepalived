#!/bin/bash

# Блок проверки порта 80 (веб-сервер nginx)
if ! nc -z localhost 80 > /dev/null 2>&1; then
    echo "CHECK: Port 80 is not open. Exiting with error."
    exit 1
fi

# Блок проверки существования index.html (стандартный путь для nginx)
if [ ! -f /var/www/html/index.html ]; then
    echo "CHECK: File /var/www/html/index.html does not exist. Exiting with error."
    exit 1
fi

# Если все проверки прошли успешно
exit 0

