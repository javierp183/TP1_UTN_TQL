sqlstart:
	@sudo docker run -e 'ACCEPT_EULA=Y' -e 'MSSQL_SA_PASSWORD=h51kolv3!' -e 'MSSQL_PID=Express' -p 1433:1433  mcr.microsoft.com/mssql/server:2017-latest
