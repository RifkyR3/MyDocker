docker pull php:7.4-apache-bullseye 
docker build . -f 74.Dockerfile -t chocin/php:7.4-apache-xdebug --no-cache