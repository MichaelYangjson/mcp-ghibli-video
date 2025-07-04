# Generated by https://smithery.ai. See: https://smithery.ai/docs/build/project-config
FROM node:lts-alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json tsconfig.json ./
RUN npm install --ignore-scripts

# Copy source code
COPY src ./src

# Build the project
RUN npm run build

# Ensure index.js is executable
RUN chmod +x build/index.js

# Define default command
CMD ["node", "build/index.js"]
