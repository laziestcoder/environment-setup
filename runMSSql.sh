# https://learn.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-ver16&pivots=cs1-bash
# sudo docker pull mcr.microsoft.com/mssql/server:2022-latest

#sudo docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=mssqltest" \
#   -p 1433:1433 --name sql1 --hostname sql1 \
#   -d mcr.microsoft.com/mssql/server:2022-latest

docker start sql1
