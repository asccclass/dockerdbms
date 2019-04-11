ContainerName?=MySQLx

login: 
	docker exec -it ${ContainerName} mysql -uroot -p

backup:
	docker exec -it ${ContainerName} mysql -uroot -p recoreds > backup.sql

import:
	docker exec -i ${ContainerName} mysql -uroot -pwebteam@2019 --database=records < records.sql

stop:
	docker stop ${ContainerName}

run:
	docker run --name ${ContainerName} -p 3306:3306 -d -v /Users/ascc/develop/docker/mysql/data:/var/lib/mysql --env-file ./envfile mysql:latest
