######## CONFIG ########################################
$name = '--name=php82-apache'
$port = '-p=8082:80'
$webDir = 'D:\Program\web\www'
$image = 'chocin/php:8.2-apache-xdebug'
########################################################

$params = 'run', '-d', '--add-host=host.docker.internal:host-gateway'
$params += $name, $port
$params += "-v=$($webDir):/var/www/html"
## optional config
# config php 5
# $params += "-v=$(Resolve-Path (Join-Path (get-location).path '..'))\conf-old.ini:/usr/local/etc/php/conf.d/99optional.ini"
# config php 7^
$params += "-v=$(Resolve-Path (Join-Path (get-location).path '..'))\conf-new.ini:/usr/local/etc/php/conf.d/99optional.ini"

$params += $image
& 'docker.exe' @params
# echo 'docker.exe' @params