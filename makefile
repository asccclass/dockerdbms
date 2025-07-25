Version=5.7
MySQLxImg?=mysql:${Version}
ContainerName?=MySQLx
PMA?=MySQLxPMA
PMAContainerName=phpmyadmin/phpmyadmin
DBNAME?=bots
DBPASSWORD?=webteam@2019

MKFILE := $(abspath $(lastword $(MAKEFILE_LIST)))
CURDIR := $(dir $(MKFILE))
SpecDir ?=/root/db/

login: 
	docker exec -it ${ContainerName} mysql -uroot -p

backup:
	docker exec -it ${ContainerName} mysqldump -uroot -p${DBPASSWORD} bots > bots.sql
	docker exec -it ${ContainerName} mysqldump -uroot -p${DBPASSWORD} assns > assns.sql
	docker exec -it ${ContainerName} mysqldump -uroot -p${DBPASSWORD} records > records.sql
	#docker exec -it ${ContainerName} mysqldump -uroot -p${DBPASSWORD} laitaian > laitaian.sql
	#docker exec -it ${ContainerName} mysqldump -uroot -p${DBPASSWORD} urpanda > urpanda.sql
	docker exec -it ${ContainerName} mysqldump -uroot -p${DBPASSWORD} lius > lius.sql
	docker exec -it ${ContainerName} mysqldump -uroot -p${DBPASSWORD} hakka > hakka.sql
	docker exec -it ${ContainerName} mysqldump -uroot -p${DBPASSWORD} sitemanager > sitemanager.sql
	docker exec -it ${ContainerName} mysqldump -uroot -p${DBPASSWORD} volunteers > volunteers.sql

import:
	# docker exec -i ${ContainerName} mysql -uroot -pwebteam@2019 < privileges.sql
	docker exec -i ${ContainerName} mysql -uroot -pwebteam@2019 --database=${DBNAME} < ${DBNAME}.sql
	docker exec -i ${ContainerName} mysql -uroot -pwebteam@2019 --database=records < records.sql
	# docker exec -i ${ContainerName} mysql -uroot -pwebteam@2019 --database=laitaian < laitaian.sql
	docker exec -i ${ContainerName} mysql -uroot -pwebteam@2019 --database=lius < lius.sql
	docker exec -i ${ContainerName} mysql -uroot -pwebteam@2019 --database=assns < assns.sql
	#docker exec -i ${ContainerName} mysql -uroot -pwebteam@2019 --database=ascare < ascare.sql
	docker exec -i ${ContainerName} mysql -uroot -pwebteam@2019 --database=hakka < hakka.sql
	docker exec -i ${ContainerName} mysql -uroot -pwebteam@2019 --database=sitemanager < sitemanager.sql
	docker exec -i ${ContainerName} mysql -uroot -pwebteam@2019 --database=volunteers < volunteers.sql

logs:
	docker logs -f -t --tail 20 ${ContainerName}

list: 
	docker ps -a

listi:
	docker images

ip:
	docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ${ContainerName}

stopMySQL:
	docker stop ${ContainerName}

stopPMA:
	docker stop ${PMA}

stop:stopPMA stopMySQL
	docker ps -a

runMySQL:
	docker run -itd --name ${ContainerName} \
	-p 3306:3306 \
	-v ${SpecDir}logs:/logs \
	-v ${SpecDir}data:/var/lib/mysql \
	--env-file ./envfile \
	${MySQLxImg}
	docker ps -a
	make log

runPhpMyAdmin:
	docker run -itd --rm --name ${PMA} \
	-v ${CURDIR}config.custom:/etc/apache2/sites-enabled \
	-v ${CURDIR}tmp:/var/lib/phpmyadmin/ \
	-v ${CURDIR}config.inc.php:/var/www/html/config.inc.php \
	--link ${ContainerName} \
	-e PMA_HOST="${ContainerName}" \
	-p 13306:80 ${PMAContainerName}
	docker ps -a

run: runMySQL runPhpMyAdmin

re: stop run

rm:
	docker rm ${ContainerName}

test:
	docker exec ${ContainerName} mysqladmin -uroot -p${DBPASSWORD} ping

log:
	docker logs -f -t --tail 20 ${ContainerName}

login:
	docker exec -it MySQLxPMA bash
s:
	git push -u origin master
