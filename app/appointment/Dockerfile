# Use official Node.js LTS version
FROM node:18-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./

# Copy application code
COPY . .

# Expose port (match the one in your code)
EXPOSE 3001

# Run the application
CMD ["node", "appointment-service.js"]
