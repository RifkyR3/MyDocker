docker run -d --add-host host.docker.internal:host-gateway `
    -p 8055:80 `
    --name php55-apache `
    -v d:/Program/web/www:/var/www/html `
    -v d:/Program/docker/data/php-apache/55/conf/:/usr/local/etc/php/conf.d/ `
    -v d:/Program/docker/data/php-apache/55/log:/usr/local/etc/php/log/ `
    chocin/php:5.5-apache-xdebug