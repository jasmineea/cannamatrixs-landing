# Use an official Nginx image to serve the static files
FROM nginx:alpine

# Copy static files into Nginx's default html directory
COPY . /usr/share/nginx/html

# Update Nginx to listen on port 8080 instead of 80
RUN sed -i 's/listen\s*80;/listen 8080;/g' /etc/nginx/conf.d/default.conf

# Expose port 8080
EXPOSE 8080

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
