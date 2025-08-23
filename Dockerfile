# Use an official Node.js runtime as a parent image
FROM node:20
# Set the working directory
WORKDIR /app
# Copy package.json and package-lock.json
COPY package*.json ./
# Install dependencies
RUN npm cache verify
RUN npm install --silent
# Copy the rest of the application code
COPY . .
# Set Node.js memory limit for the build process
ENV NODE_OPTIONS=--max-old-space-size=512
# Build the Strapi application
RUN npm run build
# Expose the port the app runs on
EXPOSE 1337
# Start the Strapi application
CMD ["npm", "run", "start"]
