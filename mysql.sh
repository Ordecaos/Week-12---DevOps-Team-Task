docker system prune -a
docker pull myounis789/petclinicmysql:latest
docker pull lordkalmed/nginx_live:latest
docker pull myounis789/petclinicrest:latest
docker pull lordkalmed/frontend:latest
docker-compose up -d
docker exec -it MySQL bash

# ---RUN THESE COMMANDS AFTER THE SCRIPT ENTERS THE MYSQL CONTAINER----
# mysql -u root -p petclinic
# source data.sql
# exit
# exit