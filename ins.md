FROM httpd:latest
COPY index.html/usr/local/apache2/htdocs


docker build -t abc .
docker run -d -p 9090:80 abc:latest

docker login

docker images 
docker tag abc divyashivanand/abc:latest
docker push divyashivanand/abc:latest
docker pull dicyashivanand/abc


