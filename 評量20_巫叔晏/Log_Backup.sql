-- 執行交易記錄備份（正確使用 SQL Server 語法）
DECLARE @logFile NVARCHAR(200);
SET @logFile = 'C:\SQLBackups\RetailCompany_Log_' + FORMAT(GETDATE(), 'yyyyMMdd_HHmmss') + '.trn';

BACKUP LOG RetailCompany
TO DISK = @logFile
WITH NAME = 'Scheduled Log Backup';
GO