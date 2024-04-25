docker-compose -f ./docker-testing/docker-compose.yml -p front_project down
git pull
docker-compose -f ./docker-testing/docker-compose.yml -p front_project up -d
docker ps