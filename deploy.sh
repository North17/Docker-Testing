echo "Stopping currently running project (if running)...\n"
docker-compose -f ./docker-testing/docker-compose.yml -p front_project down
echo "Pulling from repository...\n"
git pull origin main
echo "Starting up project...\n"
docker-compose -f ./docker-testing/docker-compose.yml -p front_project up -d
docker ps