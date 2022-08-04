FROM node:16.16-alpine3.16@sha256:0738b9ee56009d771f70eb8524d524400e02f65d4b7e528d166c6f82d66f9061
WORKDIR /kube-news/app
COPY ./package*.json ./
RUN npm i 
COPY . .
EXPOSE 8080
CMD ["node", "server.js"]