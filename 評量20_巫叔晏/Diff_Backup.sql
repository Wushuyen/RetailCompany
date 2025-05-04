-- 執行差異備份
BACKUP DATABASE RetailCompany
TO RetailCompany_BackupDevice
WITH DIFFERENTIAL, NAME = 'Scheduled Differential Backup';
GO