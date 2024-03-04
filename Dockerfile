# Use the official lightweight Node.js 14 image
FROM node:14-alpine as build-stage

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy app files
COPY . .

# Build the app
RUN npm run build

# Production stage
FROM nginx:alpine as production-stage

# Copy the built app to the nginx server
COPY --from=build-stage /app/dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx server
CMD ["nginx", "-g", "daemon off;"]
