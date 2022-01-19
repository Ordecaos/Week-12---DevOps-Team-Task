docker system prune -a
docker pull myounis789/angular:latest
docker pull myounis789/mysql:latest
docker pull myounis789/nginxpetclinic:latest
docker pull myounis789/rest2:latest
docker-compose up -d
docker exec -it MySQL bash

# ---RUN THESE COMMANDS AFTER THE SCRIPT ENTERS THE MYSQL CONTAINER----
# mysql -u root -p petclinic
# source data.sql
# exit
# exit
