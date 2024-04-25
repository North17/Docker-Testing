CYAN='\033[0;36m'
NC='\033[0m'
echo "${CYAN}\nStopping currently running project (if running)...\n${NC}"
docker-compose -f ./docker-testing/docker-compose.yml -p front_project down
echo "${CYAN}\nPulling from repository...\n${NC}"
git pull origin main
echo "${CYAN}\nStarting up project...\n${NC}"
docker-compose -f ./docker-testing/docker-compose.yml -p front_project up -d
echo "${CYAN}\nCurrently running containers:\n${NC}"
docker ps