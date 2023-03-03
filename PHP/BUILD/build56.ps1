docker pull php:5.6-apache
docker build . -f 56.Dockerfile -t chocin/php:5.6-apache-xdebug --no-cache