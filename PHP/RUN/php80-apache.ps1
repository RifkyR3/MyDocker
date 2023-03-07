docker run -d --add-host host.docker.internal:host-gateway `
    -p 8080:80 `
    --name php80-apache `
    -v D:\Program\web\www:/var/www/html `
    -v D:\Program\docker\data\php-apache\80\conf\conf-new.ini:/usr/local/etc/php/conf.d/99optional.ini `
    -v D:\Program\docker\data\php-apache\80\log:/usr/local/etc/php/log `
    chocin/php:8.0-apache-xdebug