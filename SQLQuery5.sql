USE master;
GO

EXEC sp_configure 'show advanced options', 1;
RECONFIGURE;
GO

EXEC sp_configure 'max server memory (MB)', 131072; -- 128GB in megabytes
RECONFIGURE;
GO

sp_configure 'max server memory (MB)';
