# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Bundle app source code inside the container
COPY . .

# Expose the port your server uses
EXPOSE 3000

# Define the command to run your app
CMD [ "node", "index.js" ]
