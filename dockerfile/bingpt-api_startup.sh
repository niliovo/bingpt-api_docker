#!/bin/sh

API_PORT=${API_PORT:-3000}

M_DIR="/bingpt-api"

if [ ! -e "$M_DIR/settings.js" ]; then
  echo "配置文件不存在，正在生成配置文件模板，请修改配置文件并重新启动"
  cp -r $M_DIR/settings.example.js $M_DIR/settings.js
elif [ -e "$M_DIR/settings.js" -a $(cat $M_DIR/settings.js|wc -l) -eq 0 ]; then
  echo "配置文件已存在，但无参数，正在生成参数，请修改配置文件并重新启动"
  cat $M_DIR/settings.example.js > $M_DIR/settings.js
else
  echo "配置文件已存在，请修改配置文件(修改完毕请忽略)"
fi

echo "启动 node-chatgpt-api 服务"
npm start
