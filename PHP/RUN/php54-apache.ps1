docker run -d --add-host host.docker.internal:host-gateway `
    -p 8054:80 `
    --name php54-apache `
    -v d:/Program/web/www:/var/www/html `
    -v d:/Program/docker/data/php-apache/54/conf/:/usr/local/etc/php/conf.d/ `
    -v d:/Program/docker/data/php-apache/54/log/:/usr/local/etc/php/log/ `
    chocin/php:5.4-apache-xdebug