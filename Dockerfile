# Use official Node image
FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Install deps
COPY package*.json ./
RUN npm install --only=production

# Copy source
COPY . .

# Expose port
EXPOSE 3000

# Start app
CMD ["npm", "start"]
