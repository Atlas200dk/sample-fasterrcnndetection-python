#!/bin/sh

i=$(ps -ef | grep presenter | grep faster_rcnn | grep -o '[0-9]\+' | head -n1)
if [ -z "$i" ] ;then
echo presenter sever not in process!
fi
kill -9 $i
echo presenter sever stop success!
