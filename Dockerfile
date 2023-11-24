FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./

RUN npm install

COPY . .
COPY deploy.sh .
RUN chmod +x deploy.sh

EXPOSE 3000


CMD ["node", "app.js"]
