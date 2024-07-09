# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and yarn.lock
COPY app/package.json app/yarn.lock ./

# Install dependencies
RUN yarn

# Copy the rest of the application code
COPY ./app .

# Build the Vite project
RUN yarn build

# Expose the port the app runs on
EXPOSE 4173

# Command to run the app
CMD ["yarn", "preview"]
