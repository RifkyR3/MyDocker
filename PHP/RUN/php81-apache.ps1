docker run -d --add-host host.docker.internal:host-gateway `
    -p 8081:80 `
    --name php81-apache `
    -v D:\Program\web\www:/var/www/html `
    -v D:\Program\docker\data\php-apache\81\conf\conf-new.ini:/usr/local/etc/php/conf.d/99optional.ini `
    -v D:\Program\docker\data\php-apache\81\log:/usr/local/etc/php/log `
    chocin/php:8.1-apache-xdebug