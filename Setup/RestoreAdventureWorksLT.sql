USE [master]
RESTORE DATABASE [AdventureWorksLT] 
FROM  DISK = N'C:\XTBP10ClassFiles\Data\AdventureWorksLT2016.bak' 
WITH  FILE = 1,  MOVE N'AdventureWorksLT2012_Data' TO 'C:\XTBP10ClassFiles\Data\DBFiles\AdventureWorksLT2012.mdf',  
MOVE N'AdventureWorksLT2012_Log' TO 'C:\XTBP10ClassFiles\Data\DBFiles\AdventureWorksLT2012_log.ldf',  NOUNLOAD,  REPLACE,  STATS = 5

GO


