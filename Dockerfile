# ---- Build stage ----
FROM node:alpine AS builder

# Install git
RUN apk add --no-cache git

# Set workdir
WORKDIR /app

# Clone the source repo
RUN git clone https://github.com/Circuit2TikZ/CircuiTikZ-Designer.git .

# Install dependencies
RUN npm ci

# Build the static site
RUN npm run build

# ---- Runtime stage ----
FROM nginx:alpine

# Copy built assets to NGINX default web root
COPY --from=builder /app/dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Default command
CMD ["nginx", "-g", "daemon off;"]
