# Use an official Node.js image as a base image
FROM node:18-alpine 
RUN npm init -y vite@latest test-app -- --template vanilla
# Set the working directory in the container
WORKDIR /Rubbish-Revolution/rubbish-revolution

# Copy package.json and package-lock.json to the working directory
COPY package.json .

# Install dependencies
RUN npm i --legacy-peer-deps

# Copy the remaining application code to the working directory
COPY . .

# Build the React app
# RUN npm run build
EXPOSE 5173

CMD ["npm", "run", "dev"]
# Expose the port the app runs on

# Set environment variables
# ENV REACT_APP_API_URL=http://