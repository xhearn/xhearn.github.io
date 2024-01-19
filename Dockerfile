# Use the node:10-alpine image as a base
FROM node:10-alpine

# Create a directory for the app and set it as the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available) to the container
COPY package*.json ./

# Install all packages in package.json
RUN npm install

# Copy the rest of the application source code
COPY . .

# Expose port 8080
EXPOSE 8080

# Run the app
CMD ["node", "app.js"]
