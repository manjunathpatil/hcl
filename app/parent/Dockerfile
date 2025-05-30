# Use the official Node.js base image
FROM node:18

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json if available
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Expose the app port
EXPOSE 3000

# Start the app
CMD ["node", "patient-service.js"]
