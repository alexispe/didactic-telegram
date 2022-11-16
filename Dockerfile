FROM node:18 AS nodejs

ADD . /app/

WORKDIR /app

RUN npm install
RUN npm run build

EXPOSE 3000

COPY docker/nodejs/docker-entrypoint.sh /usr/local/bin/docker-entrypoint
RUN chmod +x /usr/local/bin/docker-entrypoint

CMD npm run start