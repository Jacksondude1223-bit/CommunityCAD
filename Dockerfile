# Use Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

# Copy the entire application
COPY . .

# Build the frontend
RUN yarn build

# Start the application
CMD ["yarn", "start"]
