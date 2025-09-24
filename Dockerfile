# Use official Node.js LTS base image
FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package.json & package-lock.json (if exists)
COPY package.json ./
# If you have package-lock.json, include it:
# COPY package-lock.json ./

# Install dependencies
RUN npm install --production

# Copy rest of the application code
COPY . .

# Expose port (match the port your app listens to)
EXPOSE 3000

# Use environment variable if needed
ENV PORT=3000

# Command to run the app
CMD ["npm", "start"]
