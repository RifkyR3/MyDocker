docker pull php:7.0-apache
docker build . -f 70.Dockerfile -t chocin/php:7.0-apache-xdebug --no-cache