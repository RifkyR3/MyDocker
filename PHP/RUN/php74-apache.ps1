docker run -d --add-host host.docker.internal:host-gateway `
    -p 8074:80 `
    --name php74-apache `
    -v D:\Program\web\www:/var/www/html `
    -v D:\Program\docker\data\php-apache\74\conf\conf-new.ini:/usr/local/etc/php/conf.d/99optional.ini `
    -v D:\Program\docker\data\php-apache\74\log:/usr/local/etc/php/log `
    chocin/php:7.4-apache-xdebug