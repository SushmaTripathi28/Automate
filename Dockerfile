# Use the official Nginx image as the base image
FROM nginx:alpine

# Copy static HTML files to the Nginx directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
