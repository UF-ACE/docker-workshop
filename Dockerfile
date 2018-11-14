# Define Image
FROM node:8-alpine

# Defines the working directory INSIDE the image
WORKDIR /usr/src/app

# Copies the package.json into the working directory of the image
COPY package.json ./

# Runs npm install inside the image
RUN npm install --only=production

# Copies rest of files from the project directory into the image working directory
COPY . .

# Exposes 8080 outside of the container
EXPOSE 8080

# Sets command for be run at start (entrypoint)
CMD [ "npm", "start" ]

