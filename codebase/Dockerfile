FROM node:15-alpine

# Working directory
WORKDIR /app
COPY codebase/rdicidr-0.1.0/ ./
RUN npm install

# Build the app
RUN npm run build
# ==== RUN =======
# Set the env to "production"
ENV NODE_ENV production
# Expose the port on which the app will be running (3000 is the default that `serve` uses)
EXPOSE 3000
# Start the app
CMD [ "npx", "serve", "build" ]