docker system prune -a  -f
docker pull lordkalmed/backend:latest 
docker pull lordkalmed/frontend:latest
docker pull lordkalmed/nginx_live:latest
docker-compose up