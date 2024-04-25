CYAN='\033[0;36m'
echo "${CYAN}\nStopping currently running project (if running)...\n"
docker-compose -f ./docker-testing/docker-compose.yml -p front_project down
echo "${CYAN}\nPulling from repository...\n"
git pull origin main
echo "${CYAN}\nStarting up project...\n"
docker-compose -f ./docker-testing/docker-compose.yml -p front_project up -d
echo "${CYAN}\nCurrently running containers:\n"
docker ps