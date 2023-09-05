# Stand alone Docker MySQL Server
使用時，不能放到 /vagrant_data/ 目錄下，必須要先移到其他目錄下執行。

### useage
* Initial
```
git clone https://github.com/asccclass/dockerdbms.git
cd dockerdbms
mkdir data
```

* run MySQL Container
```
make run
```

* stop MySQL Container
```
make stop
```

* Get MySQL Container's IP
```
make ip
```

* login mysql
```
make login
```

* backup db
```
make export
```

* import db
Before you import data to database, You have to prepare backup.sql or change makefile's import command.
```
make import
```

### 檢查MySQL是否啟動

```
docker exec ${ContainerName} mysqladmin -uroot -p${DBPASSWORD} ping
```

### Use phpmyadmin
```
http://yourIP/
```
