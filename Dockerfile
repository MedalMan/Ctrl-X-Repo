FROM node:latest

WORKDIR app/

COPY package.json, main.js ./

RUN npm install

COPY . .

EXPOSE 8080

CMD [ "node", "index.js" ]
