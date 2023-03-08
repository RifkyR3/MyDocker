docker run -d --add-host host.docker.internal:host-gateway `
    -p 8055:80 `
    --name php55-apache `
    -v D:\Program\web\www:/var/www/html `
    -v D:\Program\docker\data\php-apache\55\conf\conf-old.ini:/usr/local/etc/php/conf.d/99optional.ini `
    -v D:\Program\docker\data\php-apache\55\log:/usr/local/etc/php/log `
    chocin/php:5.5-apache-xdebug

######## CONFIG ########################################
$name = '--name=php55-apache'
$port = '-p=8055:80'
$webDir = 'D:\Program\web\www'
$image = 'chocin/php:5.5-apache-xdebug'
########################################################

$params = 'run', '-d', '--add-host=host.docker.internal:host-gateway'
$params += $name, $port
$params += "-v=$($webDir):/var/www/html"
$params += "-v=$(Resolve-Path (Join-Path (get-location).path '..'))\conf-old.ini:/usr/local/etc/php/conf.d/99optional.ini"
$params += $image

& 'docker.exe' @params
# echo 'docker.exe' @params