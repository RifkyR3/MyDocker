docker run -d --add-host host.docker.internal:host-gateway `
    -p 8082:80 `
    --name php82-apache `
    -v D:\Program\web\www:/var/www/html `
    -v D:\Program\docker\data\php-apache\82\conf\conf-new.ini:/usr/local/etc/php/conf.d/99optional.ini `
    -v D:\Program\docker\data\php-apache\82\log:/usr/local/etc/php/log `
    chocin/php:8.2-apache-xdebug