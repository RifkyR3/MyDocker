docker pull php:8.1-apache-bullseye
docker build . -f 81.Dockerfile -t chocin/php:8.1-apache-xdebug --no-cache