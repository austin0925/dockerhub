# mysql dump

* dump
```
mysqldump -h 127.0.0.1 -u root -p --single-transaction --column-statistics=0 eladmin > mysql_eladmin_bak_20210410.sql
```

* prepare
* `mysql -h 127.0.0.1 -u root -p`
* `create 'user' idenfified by 'password'`

* recovery
```
mysql -h 127.0.0.1 -u root -p eladmin < mysql_eladmin_bak_20210410.sql
```