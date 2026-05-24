# Run the image Nginx
docker run -d --name my_nginx_server -p 8080:80 nginx:latest

# Add html static files to the container (Assuming index.html exists in your current directory)
docker cp index.html my_nginx_server:/usr/share/nginx/html/index.html

# Commit the container with image name IMAGE_NAME
docker commit my_nginx_server IMAGE_NAME