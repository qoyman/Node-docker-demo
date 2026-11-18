FROM node:26-alpine

# Copy package.json
COPY package.json /usr/app/

# Copy app files from src directory
COPY src /usr/app/

# Set the working directory
WORKDIR /usr/app

# Install app dependencies
RUN npm install

# Document the application port
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]