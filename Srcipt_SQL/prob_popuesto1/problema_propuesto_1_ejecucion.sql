USE DB_EmpresaXYZ
GO
EXEC InsertarNuevoProducto 
    @Descripcion_Producto = 'Equipo de Audio LG 400W', 
    @Precio_Unitario = 150.50, 
    @Cantidad_Stock = 25;