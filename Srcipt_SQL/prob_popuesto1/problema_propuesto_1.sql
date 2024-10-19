USE DB_EmpresaXYZ
GO
CREATE PROCEDURE InsertarNuevoProducto
    @Descripcion_Producto NVARCHAR(255),
    @Precio_Unitario DECIMAL(10, 2),
    @Cantidad_Stock INT
AS
BEGIN
    -- Verificar si el producto ya está registrado
    IF EXISTS (SELECT 1 
               FROM TB_Producto 
               WHERE Descripcion_Producto = @Descripcion_Producto)
    BEGIN
        -- Producto ya está registrado
        RAISERROR ('Producto ya está registrado', 16, 1);
    END
    ELSE
    BEGIN
        -- Insertar nuevo producto
        INSERT INTO TB_Producto (Codigo_Producto, Descripcion_Producto, 
		Precio_Costo, Precio_Venta, Cantidad_Inventario, Codigo_Proveedor)
        VALUES (100008, @Descripcion_Producto, @Precio_Unitario, 299.9900, @Cantidad_Stock, 100);
    END
END
GO