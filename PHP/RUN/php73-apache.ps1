docker run -d --add-host host.docker.internal:host-gateway `
    -p 8073:80 `
    --name php73-apache `
    -v D:\Program\web\www:/var/www/html `
    -v D:\Program\docker\data\php-apache\73\conf\conf-new.ini:/usr/local/etc/php/conf.d/99optional.ini `
    -v D:\Program\docker\data\php-apache\73\log:/usr/local/etc/php/log `
    chocin/php:7.3-apache-xdebug