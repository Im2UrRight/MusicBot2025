# Use an official Node.js image compatible with ARM (for Raspberry Pi)
FROM node:18-bullseye

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Install TypeScript globally
RUN npm install -g typescript

# Build the TypeScript code
RUN tsc

# Expose the port (if your bot uses a web server, specify the port here)
EXPOSE 3000

# Command to run the bot
CMD ["node", "dist/index.js"]