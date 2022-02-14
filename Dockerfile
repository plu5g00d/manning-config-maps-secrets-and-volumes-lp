FROM node:14-alpine

COPY package*.json ./

RUN npm install

COPY . .
ENV INITIAL_STATUS_MESSAGE="This is the default status message"

CMD ["node", "app.js"]
