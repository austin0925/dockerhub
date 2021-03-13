USE [master]
;
EXEC master.dbo.sp_addlinkedserver @server = N'10.7.2.101', @srvproduct=N'SQL Server'

;
USE [master]
;
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname = N'10.7.2.101', @locallogin = null , @useself = N'False', @rmtuser = N'report_bi', @rmtpassword='97283784'
;

--	test
select * 
from [10.7.2.101].stage.dbo.actlog
;

USE [master]
;
EXEC master.dbo.sp_addlinkedserver @server = N'10.1.2.51', @srvproduct=N'SQL Server'

;
USE [master]
;
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname = N'10.1.2.51', @locallogin = null , @useself = N'False', @rmtuser = N'appback', @rmtpassword='qdVii912'
;


--	test
select * 
from [10.1.2.51].LMS.dbo.actlog
WHERE logID = 123 
;
