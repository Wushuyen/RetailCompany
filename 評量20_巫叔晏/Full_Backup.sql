-- 執行完整備份
BACKUP DATABASE RetailCompany
TO RetailCompany_BackupDevice
WITH INIT, FORMAT, NAME = 'Scheduled Full Backup';
GO