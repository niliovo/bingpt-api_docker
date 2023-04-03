- [中文](#bingpt-api_docker-ZH)
- [ENGLISH](#bingpt-api_docker-EN)

# bingpt-api_docker ZH

- [Github](https://github.com/niliovo/bingpt-api_docker)
- [Docker Hub](https://hub.docker.com/r/niliaerith/bingpt-api)

# 本项目基于下列项目，将 node-chatgpt-api 集成到docker镜像

- [node-chatgpt-api](https://github.com/waylaidwanderer/node-chatgpt-api)

## Docker-Cli使用指南

```bash
docker run -itd --name bingpt-api --hostname bingpt-api --net bridge -p 3000:3000 --restart always -v /your_path/bingpt-api/settings.js:/bingpt-api/settings.js -e OPENAI_API_KEY=Your_API_KEY -e API_PORT=3000 -e API_HOST=0.0.0.0 niliaerith/bingpt-api:latest
```

## Docker Compose使用指南

- bingpt-api

```compose.yml
  bingpt-api:
    image: niliaerith/bingpt-api:latest
    container_name: bingpt-api
    hostname: bingpt-api
    restart: always
    network_mode: bridge
    ports:
      - 3000:3000
    environment:
      - OPENAI_API_KEY=Your_API_KEY
      - API_PORT=3000
      - API_HOST=0.0.0.0
    volumes:
      - /your_path/bingpt-api/settings.js:/bingpt-api/settings.js
```

## 变量

> 必须变量
- `-v /your_path/bingpt-api/settings.js:/bingpt-api/settings.js`
- - `-v /your_path/bingpt-api/settings.js:/bingpt-api/settings.js`文件为GPT配置文件,首先在宿主机创建此文件(若不手动创建，docker会自动创建文件夹，导致报错) `touch /your_path/bingpt-api/settings.js`，第一次运行自动生成配置模板，请自行修改。

> 可选变量
- `-e OPENAI_API_KEY=Your_API_KEY`
- - 填入OPENAI提供的API KEY(或在settings.js中填入，此处优先级更高)
- `- API_PORT=3000`
- - 指定API端口(或在settings.js中填入，此处优先级更高)
- `- API_HOST=0.0.0.0`
- - 指定API绑定IP(或在settings.js中填入，此处优先级更高)

## 支持平台

- amd64
- 386/32
- arm64
- arm/v7

# 感谢

- [@waylaidwanderer/node-chatgpt-api](https://github.com/waylaidwanderer/node-chatgpt-api)
- [GitHub](https://github.com/)
- [Docker Hub](https://hub.docker.com/)
- [中科大源](https://mirrors.ustc.edu.cn/)

# bingpt-api_docker EN

- [Github](https://github.com/niliovo/bingpt-api_docker)
- [Docker Hub](https://hub.docker.com/r/niliaerith/bingpt-api)

# This project is based on the following projects to integrate node-chatgpt-api into the docker image

- [node-chatgpt-api](https://github.com/waylaidwanderer/node-chatgpt-api)

## Docker-Cli Usage Guide

```bash
docker run -itd --name bingpt-api --hostname bingpt-api --net bridge -p 3000:3000 --restart always -v /your_path/bingpt-api/settings.js:/bingpt-api/settings.js -e OPENAI_API_KEY=Your_API_KEY -e API_PORT=3000 -e API_HOST=0.0.0.0 niliaerith/bingpt-api:latest
```

## Docker Compose Usage Guide

- bingpt-api

```compose.yml
  bingpt-api:
    image: niliaerith/bingpt-api:latest
    container_name: bingpt-api
    hostname: bingpt-api
    restart: always
    network_mode: bridge
    ports:
      - 3000:3000
    environment:
      - OPENAI_API_KEY=Your_API_KEY
      - API_PORT=3000
      - API_HOST=0.0.0.0
    volumes:
      - /your_path/bingpt-api/settings.js:/bingpt-api/settings.js
```

## Variable

> Necessary Variable
- `-v /your_path/bingpt-api/settings.js:/bingpt-api/settings.js`
- - `-v /your_path/bingpt-api/settings.js:/bingpt-api/settings.js` file is a GPT configuration file. First create this file on the host computer (if you do not manually create it, docker will automatically create a folder, resulting in an error). `touch /your_path/bingpt-api/settings.js`，The automatic configuration template is generated for the first time. Modify it yourself.

> Optional Variable
- `-e OPENAI_API_KEY=Your_API_KEY`
- - Enter the API KEY provided by OPENAI (or in settings.js, which has higher priority).
- `- API_PORT=3000`
- - Specified API port (or in settings.js, which has higher priority).
- `- API_HOST=0.0.0.0`
- - Specify the IP address bound to the API (or in settings.js, which has higher priority).

## Support Platform

- amd64
- 386/32
- arm64
- arm/v7

# Thanks

- [@waylaidwanderer/node-chatgpt-api](https://github.com/waylaidwanderer/node-chatgpt-api)
- [GitHub](https://github.com/)
- [Docker Hub](https://hub.docker.com/)
- [USTC open source software mirror](https://mirrors.ustc.edu.cn/)