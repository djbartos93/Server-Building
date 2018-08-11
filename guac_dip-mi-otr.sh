docker run -d -p 80:80 -p 443:443 --name nginx-guac-proxy-mi-otr  -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy

docker run --name lab-mi-otr-guacd -d guacamole/guacd

mkdir db_init

docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --mysql > ./db_init/initdb.sql

docker run --name guac-mysql-mi-otr -v $PWD/db_init:/docker-entrypoint-initdb.d -e MYSQL_ROOT_PASSWORD=CHANGEME -e MYSQL_DATABASE=guacamole_db -e MYSQL_USER=guacamole_user -e MYSQL_PASSWORD=CHANGEME -d mysql:5.7

docker run --name lab-mi-otr-guacamole --link lab-mi-otr-guacd:guacd \
    --link guac-mysql:mysql         \
    -e MYSQL_DATABASE=guacamole_db  \
    -e MYSQL_USER=guacamole_user    \
    -e MYSQL_PASSWORD=CHANGEME \
    -e VIRTUAL_HOST=guacamole \
    -d -p 8080:8080 guacamole/guacamole
