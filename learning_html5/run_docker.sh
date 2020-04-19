docker build . -t docker-nginx
docker run --name hello-world-nginx -d -p 9080:9080 docker-nginx
