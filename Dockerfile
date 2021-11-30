FROM mhart/alpine-node:14.17.3

COPY package*.json ./

RUN npm install

COPY . .
ENV INITIAL_STATUS_MESSAGE="This is the default status message"

CMD ["node", "app.js"]