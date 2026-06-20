FROM node:18
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
# Let Back4App assign the port dynamically
CMD [ "node", "index.js" ]
