docker run -d --add-host host.docker.internal:host-gateway `
    -p 3356:3306 `
    --name mysql56 `
    -e MYSQL_ROOT_PASSWORD=root `
    -e TZ=Asia/Jakarta `
    -v D:\Program\docker\data\mysql\56\data:/var/lib/mysql `
    -v D:\Program\docker\data\mysql\56\conf:/etc/mysql/conf.d `
    -v D:\Program\docker\data\mysql\56\log:/var/log `
    mysql:5.6 `
    --sql_mode= `
    --max_allowed_packet=32505856 `
    --default-time-zone=+07:00 `
    --innodb-rollback-segments=256 `
    --innodb_file_format=Barracuda