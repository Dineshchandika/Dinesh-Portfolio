# Use the official Nginx image to serve the static files
FROM nginx:alpine

# Copy the portfolio files into the Nginx HTML directory
COPY . /usr/share/nginx/html

# Expose port 80 to make the web server accessible
EXPOSE 80
