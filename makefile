MySQLxImg?=mysql:5.7
ContainerName?=MySQLx
PMA?=MySQLxPMA
PMAContainerName=phpmyadmin/phpmyadmin
DBNAME?=records
DBPASSWORD?=webteam@2019

MKFILE := $(abspath $(lastword $(MAKEFILE_LIST)))
CURDIR := $(dir $(MKFILE))

login: 
	docker exec -it ${ContainerName} mysql -uroot -p

backup:
	docker exec -it ${ContainerName} mysqldump -uroot -p${DBPASSWORD} ${DBNAME} > ${DBNAME}.sql
	docker exec -it ${ContainerName} mysqldump -uroot -p${DBPASSWORD} records > records.sql
	docker exec -it ${ContainerName} mysqldump -uroot -p${DBPASSWORD} laitaian > laitaian.sql
	docker exec -it ${ContainerName} mysqldump -uroot -p${DBPASSWORD} assns > assns.sql
	docker exec -it ${ContainerName} mysqldump -uroot -p${DBPASSWORD} urpanda > urpanda.sql

import:
	# docker exec -i ${ContainerName} mysql -uroot -pwebteam@2019 < privileges.sql
	# docker exec -it MySQLx mysql -uroot -pwebteam@2019 -e "create database ${DBNAME}"
	docker exec -i ${ContainerName} mysql -uroot -pwebteam@2019 --database=${DBNAME} < ${DBNAME}.sql

logs:
	docker logs -f -t --tail 20 ${ContainerName}

list: 
	docker ps -a

listi:
	docker images

ip:
	docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ${ContainerName}

runMySQL:
	docker run -itd --rm --name ${ContainerName} -p 3306:3306 -v ${CURDIR}data:/var/lib/mysql --env-file ./envfile ${MySQLxImg}
	docker ps -a

stopMySQL:
	docker stop ${ContainerName}

stopPMA:
	docker stop ${PMA}

stop:stopPMA stopMySQL
	docker ps -a

run: runMySQL
	docker run -itd --rm --name ${PMA} --link ${ContainerName} -e PMA_HOST="${ContainerName}" -p 10080:80 ${PMAContainerName}
	docker ps -a
