USE DB_EmpresaXYZ
GO
SELECT dbo.CategorizarProveedor(100, 100000) AS CategoriaProveedor,
dbo.CategorizarProveedor(100000, 100000) AS CategoriaProveedor,
dbo.CategorizarProveedor(100001, 100000) AS CategoriaProveedor
GO