#!/bin/bash
. config.ini
echo 'ingrese accion get o put'
read action
echo '--------------------------'
echo 'ingrese nombre del archivo'
read file_name

echo 'sftp -oport='${port} ${user}'@'${server} '<<EOF'
echo 'cd '${path}
echo ${action} ${file_name}
echo 'exit'
echo 'EOF'
