docker pull php:8.0-apache-bullseye
docker build . -f 80.Dockerfile -t chocin/php:8.0-apache-xdebug --no-cache