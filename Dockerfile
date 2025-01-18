FROM node:latest

# Create app directory
RUN mkdir -p /usr/src/bot
WORKDIR /usr/src/bot

# Install app dependencies
COPY package.json /usr/src/bot
RUN npm install

# Bundle app source
COPY . /usr/src/bot

# Expose the port the app runs on
CMD ["node", "index.js"]