docker run -d --add-host host.docker.internal:host-gateway `
    -p 3380:3306 `
    --name mysql80 `
    -e MYSQL_ROOT_PASSWORD=root `
    -e TZ=Asia/Jakarta `
    -v d:/Program/docker/data/mysql/80/data/:/var/lib/mysql/ `
    -v d:/Program/docker/data/mysql/80/conf/:/etc/mysql/conf.d `
    -v d:/Program/docker/data/mysql/80/log/:/var/log/ `
    mysql:8.0-debian `
    --sql_mode= `
    --max_allowed_packet=32505856 `
    --default-time-zone=+07:00