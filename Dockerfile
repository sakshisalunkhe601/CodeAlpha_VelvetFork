# Use the lightweight Nginx Alpine image
FROM nginx:alpine

# Copy your HTML file into the default Nginx public directory
# Note: Ensure your HTML file is named 'index.html' in your folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]