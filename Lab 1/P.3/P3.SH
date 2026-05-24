# Deploy a MySQL database called app-database running in the background
docker run -d --name app-database -e MYSQL_ROOT_PASSWORD='P4sSw0rd0!' mysql:latest