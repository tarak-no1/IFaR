FROM node:10-alpine

# Creating app directory
WORKDIR /usr/src/app

# coping package.json and package-lock.json
COPY package*.json ./

# Installing app dependencies
RUN npm install

# Bundle app source
COPY . .

EXPOSE 3000

CMD [ "node", "index" ]