# Run the container hello-world
docker run --name my_hello_container hello-world

# Check the container status
docker ps -a --filter "name=my_hello_container"

# Start the stopped container
docker start my_hello_container

# Remove the container
docker rm my_hello_container

# Remove the image
docker rmi hello-world