USE master;
GO

DECLARE @DatabaseName nvarchar(50);
SET @DatabaseName = N'DB_EmpresaXYZ';

DECLARE @SQL varchar(max);

SELECT @SQL = COALESCE(@SQL,'') + 'KILL ' + Convert(varchar, SPId) + ';'
FROM MASTER..SysProcesses
WHERE DBId = DB_ID(@DatabaseName) AND SPId <> @@SPId;

EXEC(@SQL);

DROP DATABASE DB_EmpresaXYZ