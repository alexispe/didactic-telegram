FROM node:18 AS nodejs

ADD . /app/

WORKDIR /app

RUN npm install
RUN npm run build

EXPOSE 3000

CMD npm run start