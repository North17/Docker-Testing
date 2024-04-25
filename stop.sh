echo "Stopping currently running project (if any)...\n"
docker-compose -f ./docker-testing/docker-compose.yml -p front_project down