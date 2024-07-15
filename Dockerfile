# Stage 1: Build the React app
FROM node:18 AS build

# Set working directory
WORKDIR /app

# Install dependencies
COPY app/package.json app/yarn.lock ./
RUN yarn install

# Copy the rest of the application code
COPY ./app .

# Build the React app
RUN yarn build

# Stage 2: Run the app with pm2
FROM node:18

# Set working directory
WORKDIR /app

# Install pm2 globally
RUN npm install -g pm2

# Copy the build output from the first stage
COPY --from=build /app/dist ./dist

# Copy the rest of the application code
COPY ./app .

# Expose the port that the app runs on
EXPOSE 3000

# Start the app using pm2
CMD ["pm2-runtime", "start", "pm2.config.cjs"]
