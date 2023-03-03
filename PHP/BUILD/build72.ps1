docker pull php:7.2-apache
docker build . -f 72.Dockerfile -t chocin/php:7.2-apache-xdebug --no-cache