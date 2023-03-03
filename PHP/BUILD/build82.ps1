docker pull php:8.2-apache-bullseye
docker build . -f 82.Dockerfile -t chocin/php:8.2-apache-xdebug --no-cache