USE DB_EmpresaXYZ
GO
CREATE PROCEDURE ReservarCodigosProductos
AS
BEGIN
    DECLARE @UltimoID INT, @NuevoID INT, @Contador INT;

    -- Obtener el último ID de producto registrado
    SELECT @UltimoID = MAX(Codigo_Producto) FROM TB_Producto;

    -- Inicializar contador
    SET @Contador = 1;

    -- Repetir hasta insertar 5 nuevos productos
    WHILE @Contador <= 5
    BEGIN
        -- Calcular el nuevo código de producto
        SET @NuevoID = @UltimoID + @Contador;

        -- Insertar el nuevo producto con valores por defecto
        INSERT INTO TB_Producto (Codigo_Producto, Descripcion_Producto, Cantidad_Inventario, Precio_Venta, Precio_Costo, Codigo_Proveedor)
        VALUES (@NuevoID, 'Nuevo Producto Por Definir', 0, 0, 0, 100);

        -- Incrementar el contador
        SET @Contador = @Contador + 1;
    END
END;
GO