docker run -d --add-host host.docker.internal:host-gateway `
    -p 8070:80 `
    --name php70-apache `
    -v D:\Program\web\www:/var/www/html `
    -v D:\Program\docker\data\php-apache\70\conf\conf-new.ini:/usr/local/etc/php/conf.d/99optional.ini `
    -v D:\Program\docker\data\php-apache\70\log:/usr/local/etc/php/log `
    chocin/php:7.0-apache-xdebug