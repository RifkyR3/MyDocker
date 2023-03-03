docker pull php:5.5-apache
docker build . -f 55.Dockerfile -t chocin/php:5.5-apache-xdebug --no-cache