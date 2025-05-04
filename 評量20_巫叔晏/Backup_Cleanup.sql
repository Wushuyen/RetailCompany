-- 刪除14天前的備份歷史記錄（僅保留這段，移除有問題的 xp_delete_file 部分）
EXEC msdb.dbo.sp_delete_backuphistory @oldest_date = DATEADD(DAY, -14, GETDATE());
GO