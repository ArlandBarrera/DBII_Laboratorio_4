USE DB_EmpresaXYZ
GO
CREATE FUNCTION CategorizarProveedor (
    @MontoAcumulado DECIMAL(18, 2), 
    @MontoUmbral DECIMAL(18, 2)
)
RETURNS NVARCHAR(50)
AS
BEGIN
    DECLARE @Categoria NVARCHAR(50);

    IF @MontoAcumulado > @MontoUmbral
        SET @Categoria = 'Proveedor VIP';
    ELSE IF @MontoAcumulado <= @MontoUmbral AND @MontoAcumulado > (@MontoUmbral * 0.30)
        SET @Categoria = 'Proveedor Frecuente';
    ELSE
        SET @Categoria = 'Proveedor Regular';

    RETURN @Categoria;
END;
GO