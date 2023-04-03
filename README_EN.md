# bingpt_docker

- [中文](./README.md)
- [ENGLISH](./README_EN.md)

- [Github](https://github.com/niliovo/bingpt-api_docker)
- [Docker Hub](https://hub.docker.com/r/niliaerith/bingpt-api)

# This project is based on the following projects to integrate node-chatgpt-api into the docker image

- [node-chatgpt-api](https://github.com/waylaidwanderer/node-chatgpt-api)

## Docker-Cli Usage Guide

```bash
docker run -itd --name bingpt-api --hostname bingpt-api --net bridge -p 3000:3000 --restart always -v /your_path/bingpt-api/settings.js:/bingpt-api/settings.js -e OPENAI_API_KEY=Your_API_KEY -e API_PORT=3000 -e API_HOST=0.0.0.0 niliaerith/bingpt-api:latest
```

## Docker Compose Usage Guide

- bingpt

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