#!/bin/sh

M_DIR="/bingpt-api"

sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

apk --update --no-cache add nodejs npm git

git clone https://github.com/waylaidwanderer/node-chatgpt-api.git /temp

mv /temp/* $M_DIR

rm -rf /temp

npm ci --no-color --quiet

apk del git