# Use official Nginx image
FROM nginx:alpine

# Remove default nginx files
RUN rm -rf /usr/share/nginx/html/*

# Copy your website into nginx folder
COPY . /usr/share/nginx/html/

# Expose port80
EXPOSE 80
