docker pull php:5.4-apache
docker build . -f 54.Dockerfile -t chocin/php:5.4-apache-xdebug --no-cache