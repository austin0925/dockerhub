## docker desc

* create volume
    * `sh untarVol.sh damssql_vol`
    * `sh untarVol.sh damysql_vol`
* start docker container
    * `sh run.sh`
* stop docker container
    * `sh rm.sh`

## init Mssql
* using mdf & ldf for attatch
* docker cp into container `/var/opt/mssql/data`
* chmod 700 for mdf & ldf
* docker -d `distro` -u `account`

## init Mysql
* using mount `/var/lib/mysql`