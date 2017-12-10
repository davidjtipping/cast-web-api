FROM node:alpine
WORKDIR /cast-web-api
RUN apk add --update git && \
  rm -rf /tmp/* /var/cache/apk/*
RUN git clone https://github.com/vervallsweg/cast-web-api.git . && \
  npm install 
EXPOSE 8080
CMD ["node","/cast-web-api/castWebApi.js","--hostname=0.0.0.0","--port=8080"]
