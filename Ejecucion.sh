#!/bin/bash

docker run -d --name mysql-db \
        -p 3306:3306 \
        -p 33060:33060 \
        -e MYSQL_ROOT_PASSWORD=secret \
        -e MYSQL_DATABASE=biblioteca \
        -v $(pwd)/sql-scripts:/sql-scripts \
        -v $(pwd)/sql-init:/docker-entrypoint-initdb.d \
        mysql:5.7.39
