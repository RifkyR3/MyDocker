docker run -d --add-host host.docker.internal:host-gateway `
    -p 8072:80 `
    --name php72-apache `
    -v D:\Program\web\www:/var/www/html `
    -v D:\Program\docker\data\php-apache\72\conf\conf-new.ini:/usr/local/etc/php/conf.d/99optional.ini `
    -v D:\Program\docker\data\php-apache\72\log:/usr/local/etc/php/log `
    chocin/php:7.2-apache-xdebug