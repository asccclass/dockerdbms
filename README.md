# Stand alone Docker MySQL Server

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

### Use phpmyadmin
```
http://yourIP/
```
