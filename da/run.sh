docker run --name damysql -v damysql_vol:/var/lib/mysql -p 3306:3306 -e 'MYSQL_ROOT_PASSWORD=my-secret-pw' -d mysql:5.7.29 && \
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=PassW0rd!' -e 'MSSQL_PID=Developer' --name damssql -p 1433:1433 -v damssql_vol:/var/opt/mssql -d mcr.microsoft.com/mssql/server:2019-latest && \
docker ps -a
