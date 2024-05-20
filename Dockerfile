# Use a Node.js base image with the specified Node and npm versions
FROM node:20.13.1

# Set the working directory inside the container
WORKDIR /app

# Install the Angular CLI globally with the specified version
RUN npm install -g @angular/cli@17.3.7

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the entire application to the container
COPY . .

# Build the Angular application
RUN ng build

# Expose the default Angular port (change it if necessary)
EXPOSE 4200

# Start the Angular application when the container starts
CMD ng serve --host 0.0.0.0