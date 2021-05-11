FROM node:12-slim

ENV HOME=/home/app

COPY package.json package-lock.json $HOME/express-simple-server/

WORKDIR $HOME/express-simple-server

RUN npm install --silent --progress=false

COPY . $HOME/express-simple-server

EXPOSE 8000

CMD ["npm", "start"]
