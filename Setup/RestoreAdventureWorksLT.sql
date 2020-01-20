DECLARE @DataDirPath nvarchar = N'C:\XTBP10ClassFiles\Data\DBFiles';
DECLARE @DataFilePath nvarchar(max) = @DataDirPath + '\AdventureWorksLT2012.mdf';
DECLARE @DataLogPath nvarchar(max) = @DataDirPath + '\AdventureWorksLT2012_log.ldf';

USE [master]
RESTORE DATABASE [AdventureWorksLT] 
FROM  DISK = N'C:\XTBP10ClassFiles\Data\AdventureWorksLT2016.bak' 
WITH  FILE = 1,  MOVE N'AdventureWorksLT2012_Data' TO @DataFilePath,  MOVE N'AdventureWorksLT2012_Log' TO @DataLogPath,  NOUNLOAD,  REPLACE,  STATS = 5

GO


