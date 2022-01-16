FROM myounis789/frontend:latest as build


COPY . /workspace/

ARG NPM_REGISTRY=" https://registry.npmjs.org"

RUN echo "registry = \"$NPM_REGISTRY\"" > /workspace/.npmrc && \
    cd /workspace/ && \
    sudo npm install && \
    sudo npm run build

ARG NGINX_VERSION="1.17.6"
FROM nginx AS runtime

COPY  --from=build /workspace/dist/ /usr/share/nginx/html/

RUN sudo chmod a+rwx /var/cache/nginx /var/run /var/log/nginx                        && \
    sudo sed -i.bak 's/listen\(.*\)80;/listen 4200;/' /etc/nginx/conf.d/default.conf && \
    sudo sed -i.bak 's/^user/#user/' /etc/nginx/nginx.conf


EXPOSE 4200

USER nginx

HEALTHCHECK     CMD     [ "service", "nginx", "status" ]