# Use official Node.js 18 image as base
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install 

# Install Vite globally
RUN npm install -g vite

# Copy the rest of the application code
COPY . .

# Expose the port Vite uses (default is 3000)
EXPOSE 3000

# Command to run Vite
CMD ["npm", "run", "dev"]
