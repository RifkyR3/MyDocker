docker run -d --add-host host.docker.internal:host-gateway `
    -p 8056:80 `
    --name php56-apache `
    -v d:/Program/web/www:/var/www/html `
    -v d:/Program/docker/data/php-apache/56/conf/:/usr/local/etc/php/conf.d/ `
    -v d:/Program/docker/data/php-apache/56/log:/usr/local/etc/php/log/ `
    chocin/php:5.6-apache-xdebug