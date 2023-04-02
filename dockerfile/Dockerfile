FROM alpine:latest

MAINTAINER niliovo 1791356563@qq.com

ENV API_HOST=0.0.0.0

WORKDIR /bingpt-api

COPY . .

RUN chmod a+x ./bingpt-api_build.sh && ./bingpt-api_build.sh

RUN npm install

EXPOSE 3000

HEALTHCHECK --interval=30s --timeout=10s \
  CMD [ "/bin/sh", "health_check.sh" ]

ENTRYPOINT ["/bin/sh", "bingpt-api_startup.sh"]