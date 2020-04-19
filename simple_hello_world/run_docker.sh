docker build . -t docker-nginx
docker run --name hello-world-nginx -d -p 3333:9080 docker-nginx
