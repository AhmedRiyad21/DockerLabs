# Run container centos or ubuntu in an interactive mode and run "echo docker"
docker run --rm ubuntu echo docker

# Run the container to open a shell and touch the file
docker run -d --name interactive_ubuntu ubuntu sleep 300

# Open a bash shell in the container and touch a file named hello-docker
docker exec interactive_ubuntu touch /hello-docker

# Stop the container
docker stop interactive_ubuntu

# remove it
docker rm interactive_ubuntu

# Remove all stopped containers
docker container prune -f