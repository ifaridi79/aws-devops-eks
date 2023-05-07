FROM node:14.17.5

WORKDIR /app
COPY package.json ./
RUN npm install
RUN npm run build
EXPOSE 3000
COPY . .
CMD [ "node", "server.js" ]