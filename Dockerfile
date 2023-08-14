FROM node:18-alpine

#Create Directory
WORKDIR /usr/src/app

COPY package.json yarn.lock ./
RUN yarn install
COPY . .
CMD ["node","index.js"]
EXPOSE 3000
