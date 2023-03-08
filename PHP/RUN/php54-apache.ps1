######## CONFIG ########################################
$name = '--name=php54-apache'
$port = '-p=8054:80'
$webDir = 'D:\Program\web\www'
$image = 'chocin/php:5.4-apache-xdebug'
########################################################

$params = 'run', '-d', '--add-host=host.docker.internal:host-gateway'
$params += $name, $port
$params += "-v=$($webDir):/var/www/html"
$params += "-v=$(Resolve-Path (Join-Path (get-location).path '..'))\conf-old.ini:/usr/local/etc/php/conf.d/99optional.ini"
$params += $image

& 'docker.exe' @params
# echo 'docker.exe' @params