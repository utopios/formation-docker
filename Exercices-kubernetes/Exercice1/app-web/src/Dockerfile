FROM node:8

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 80

CMD ["nohup", "node", "index.js"]