# Use a lightweight, minimal base image
FROM nginx:alpine

# Set the working directory within the container
WORKDIR /usr/share/nginx/html

# Copy the contents of your local static website directory to the container
COPY . .

# Expose the port on which Nginx will run (default is 80)
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
