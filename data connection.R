library(RODBC)
myconn <- odbcConnect("IVAN_LIU","sa","clouds123")
criteo.data <- sqlFetch(myconn, "MSreplication_options")
da <- sqlQuery(myconn, "select top 5 * from MSreplication_options")
library(sqldf)
sqlTables(myconn)
?sqlFetch
close(myconn)
