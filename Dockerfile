# Use the official Node.js image as a base
FROM node:18

# Create and set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the application port
EXPOSE 3000

# Define the command to run the application
CMD ["npm", "start"]
