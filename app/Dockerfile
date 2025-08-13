# Use official Node.js LTS image
FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json first (for better caching)
COPY package*.json ./

# Install dependencies
RUN npm ci --only=production

# Copy rest of the app source code
COPY . .

# Expose app port
EXPOSE 3000

# Run the application
CMD ["node", "server.js"]
