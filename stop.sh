CYAN='\033[0;36m'
NC='\033[0m'
echo "${CYAN}Stopping currently running project (if any)...\n${NC}"
docker-compose -f ./docker-testing/docker-compose.yml -p front_project down