library(RODBC)
channel <- odbcDriverConnect('driver=SQL Server;server=IVAN_LIU;database=Criteo-Kaggle;trusted_connection=true')
train <- sqlQuery(channel,"select top 10 * from train")
close(dbhandle)

library(sqldf)
sqlTables(myconn)
close(myconn)


