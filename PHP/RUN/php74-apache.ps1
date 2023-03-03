docker run -d --add-host host.docker.internal:host-gateway `
    -p 8074:80 `
    --name php74-apache `
    -v d:/Program/web/www:/var/www/html `
    -v d:/Program/docker/data/php-apache/74/conf/:/usr/local/etc/php/conf.d/ `
    -v d:/Program/docker/data/php-apache/74/log:/usr/local/etc/php/log/ `
    chocin/php:7.4-apache-xdebug