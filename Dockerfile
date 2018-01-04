FROM node:alpine
WORKDIR /cast-web-api
RUN apk add --update git && \
  rm -rf /tmp/* /var/cache/apk/*
RUN git clone https://github.com/davidjtipping/cast-web-api.git . && \
  npm install 
EXPOSE 3003
CMD ["node","/cast-web-api/castWebApi.js","--hostname=0.0.0.0","--port=3003"]
