-- 快速還原資料庫到最近完整或差異備份
RESTORE DATABASE RetailCompany
FROM RetailCompany_BackupDevice
WITH REPLACE, RECOVERY;
GO

-- 時間點還原，回復到指定時間
RESTORE LOG RetailCompany
FROM DISK = 'C:\SQLBackups\RetailCompany_Log_指定時間.trn'
WITH STOPAT = '2025-05-01 09:30:00', RECOVERY;
GO

-- 測試還原到新資料庫，用於驗證備份是否有效
RESTORE DATABASE RetailCompany_Test
FROM RetailCompany_BackupDevice
WITH MOVE 'RetailCompany_Data' TO 'C:\SQLBackups\RetailCompany_Test.mdf',
     MOVE 'RetailCompany_Log' TO 'C:\SQLBackups\RetailCompany_Test.ldf',
     RECOVERY;
GO