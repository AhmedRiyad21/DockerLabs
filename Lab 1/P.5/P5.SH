# Build the image and test it
docker build -t ahmed_riad99/python-app:latest -f Dockerfile .
docker run --rm ahmed_riad99/python-app:latest

# Build the same app in smaller size using multi staging
docker build -t ahmed_riad99/python-app:mini -f Dockerfile.multistage .
docker run --rm ahmed_riad99/python-app:mini

# Push the created image into your docker hub repo
docker login
docker push ahmed_riad99/python-app:latest
docker push ahmed_riad99/python-app:mini