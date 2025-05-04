REM 執行備份清理指令（僅執行 sp_delete_backuphistory 部分）
sqlcmd -S DESKTOP-RMRPVGG -U backup_user -P StrongPass123! -i "C:\Scripts\Backup_Cleanup.sql"