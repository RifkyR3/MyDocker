docker pull php:7.1-apache
docker build . -f 71.Dockerfile -t chocin/php:7.1-apache-xdebug --no-cache