FROM node:18-alpine

# Create app directory
WORKDIR /app/

COPY ./package.json /app/package.json

RUN npm install

COPY . /app/

EXPOSE 3000

CMD [ "node", "index.js" ]
