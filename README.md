# Stand alone Docker MySQL Server

### useage
* Initial
```
git clone https://github.com/asccclass/dockerdbms.git
cd dockerdbms
mkdir data
```

* run MySQL container
```
make run
```

* stop MySQL container
```
make stop
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
mkae import
```
