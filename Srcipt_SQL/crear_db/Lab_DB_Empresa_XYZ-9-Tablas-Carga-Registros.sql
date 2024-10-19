/* Base de Datos DB_EmpresaXYZ
Laboratorio N�2 - Creaci�n de la Estructura de la Base de Datos
Fecha: 31/08/2020
Cantidad de Tablas: 9 Tablas
---> Adicionando Registros a la Base de Datos.
*/

USE DB_EmpresaXYZ
Go
/*
	Comandos para Cambiar el formato fecha cuando se realiza una instalaci�n de SQL Server en Ingles.
	Desde Set Language se formatea que el idioma por defecto es Espa�ol.
	Set DateFormat dmy permite cambiar que el formato sea dd/MM/yyyy
*/
SET LANGUAGE Español
set dateformat dmy


/* Insertar Registros Proveedores */
INSERT INTO TB_Proveedor (Codigo_Proveedor, Nombre_Proveedor, PrimerApellido_Proveedor, SegundoApellido_Proveedor, TelefonoFijo_Proveedor, TelefonoMovil_Proveedor, Direccion_Proveedor, Email_Proveedor) VALUES (100, 'Miguel', 'Aguilar', 'Garcia', '998-1020', '6630-1015', 'Santiago', 'miguelaguilar@hotmail.com')
INSERT INTO TB_Proveedor (Codigo_Proveedor, Nombre_Proveedor, PrimerApellido_Proveedor, SegundoApellido_Proveedor, TelefonoFijo_Proveedor, TelefonoMovil_Proveedor, Direccion_Proveedor, Email_Proveedor) VALUES (101, 'Carlos', 'Ort�z', 'Jimenez', '959-3025', '6660-1890', 'Santiago', 'carlosortiz@hotmail.com')
INSERT INTO TB_Proveedor (Codigo_Proveedor, Nombre_Proveedor, PrimerApellido_Proveedor, SegundoApellido_Proveedor, TelefonoFijo_Proveedor, TelefonoMovil_Proveedor, Direccion_Proveedor, Email_Proveedor) VALUES (102, 'Jes�s', 'Sanchez', 'Pimentel', '996-7825', '6520-3978', 'Chitre', 'jesussanchez@gmail.com')
INSERT INTO TB_Proveedor (Codigo_Proveedor, Nombre_Proveedor, PrimerApellido_Proveedor, SegundoApellido_Proveedor, TelefonoFijo_Proveedor, TelefonoMovil_Proveedor, Direccion_Proveedor, Email_Proveedor) VALUES (103, 'Maria', 'Hern�ndez', 'Gonz�lez', '997-7980', '6300-2596', 'Chitre', 'mhernandez@gmail.com')
INSERT INTO TB_Proveedor (Codigo_Proveedor, Nombre_Proveedor, PrimerApellido_Proveedor, SegundoApellido_Proveedor, TelefonoFijo_Proveedor, TelefonoMovil_Proveedor, Direccion_Proveedor, Email_Proveedor) VALUES (104, 'Mirta', 'Figueroa', 'Gutierrez', '236-1515', '6031-8567', 'Panama', 'mirtaFigu10@yahoo.es')
Go

/* Insertar Registros Clientes */
INSERT INTO TB_Cliente (Codigo_Cliente, Cedula_Cliente, Nombre_Cliente, PrimerApellido_Cliente, SegundoApellido_Cliente, TelefonoFijo_Cliente, TelefonoMovil_Cliente, Direccion_Cliente, Email_Cliente, Saldo_Cliente) VALUES ('00001', '9-1025-5698', 'Juan', 'Delgado', 'Aparicio', '998-1023', '6512-7489', 'Santiago', 'JuanDelgadoA@cwpanama.net', 20.55)
INSERT INTO TB_Cliente (Codigo_Cliente, Cedula_Cliente, Nombre_Cliente, PrimerApellido_Cliente, SegundoApellido_Cliente, TelefonoFijo_Cliente, TelefonoMovil_Cliente, Direccion_Cliente, Email_Cliente, Saldo_Cliente) VALUES ('00002', '9-700-700', 'Maria', 'Guerra', 'Perez', '998-6071', '6325-7952', 'Santiago', 'mariaGperez@hotmail.com', 55.78)
INSERT INTO TB_Cliente (Codigo_Cliente, Cedula_Cliente, Nombre_Cliente, PrimerApellido_Cliente, SegundoApellido_Cliente, TelefonoFijo_Cliente, TelefonoMovil_Cliente, Direccion_Cliente, Email_Cliente, Saldo_Cliente) VALUES ('00003', '9-852-963', 'Claudia', 'Soto', 'Estrib�', '959-6821', '6630-8517', 'Santiago', 'claudiasoto@hotmail.com', 34.00)
INSERT INTO TB_Cliente (Codigo_Cliente, Cedula_Cliente, Nombre_Cliente, PrimerApellido_Cliente, SegundoApellido_Cliente, TelefonoFijo_Cliente, TelefonoMovil_Cliente, Direccion_Cliente, Email_Cliente, Saldo_Cliente) VALUES ('00004', '6-100-1269', 'Celestino', 'Saturno', 'Gomez', '997-5273', '6000-4569', 'Chitre', '', 34.00)
INSERT INTO TB_Cliente (Codigo_Cliente, Cedula_Cliente, Nombre_Cliente, PrimerApellido_Cliente, SegundoApellido_Cliente, TelefonoFijo_Cliente, TelefonoMovil_Cliente, Direccion_Cliente, Email_Cliente, Saldo_Cliente) VALUES ('00005', '2-126-555', 'Matilda', 'Pe�aloza', 'Sanjur', '', '', 'Chitre', '', 7.15)
INSERT INTO TB_Cliente (Codigo_Cliente, Cedula_Cliente, Nombre_Cliente, PrimerApellido_Cliente, SegundoApellido_Cliente, TelefonoFijo_Cliente, TelefonoMovil_Cliente, Direccion_Cliente, Email_Cliente, Saldo_Cliente) VALUES ('00006', '6-700-560', 'Artemio', 'Castro', 'Chavez', '996-3230', '6666-7011', 'Chitre', 'ArtemioCastroCh@yahoo.es', 0.00)
INSERT INTO TB_Cliente (Codigo_Cliente, Cedula_Cliente, Nombre_Cliente, PrimerApellido_Cliente, SegundoApellido_Cliente, TelefonoFijo_Cliente, TelefonoMovil_Cliente, Direccion_Cliente, Email_Cliente, Saldo_Cliente) VALUES ('00007', '9-628-100', 'Marcos', 'Gonz�lez', 'Puente', '958-1074', '6230-1458', 'Santiago', 'marcospuente@cwpanama.net', 0.00)
Go

INSERT INTO TB_Producto (Codigo_Producto, Descripcion_Producto, Cantidad_Inventario, Precio_Venta, Precio_Costo, Codigo_Proveedor) VALUES (100001, 'Equipo de Audio LG 400W', 30, 320.75, 275.00, 100)   
INSERT INTO TB_Producto (Codigo_Producto, Descripcion_Producto, Cantidad_Inventario, Precio_Venta, Precio_Costo, Codigo_Proveedor) VALUES (100002, 'Equipo de Audio LG 700W', 25, 650.75, 520.00, 103)   
INSERT INTO TB_Producto (Codigo_Producto, Descripcion_Producto, Cantidad_Inventario, Precio_Venta, Precio_Costo, Codigo_Proveedor) VALUES (100003, 'Consola WII V.2012"', 60, 199.99,  140.25, 102)   
INSERT INTO TB_Producto (Codigo_Producto, Descripcion_Producto, Cantidad_Inventario, Precio_Venta, Precio_Costo, Codigo_Proveedor) VALUES (100004, 'NoteBook ACER 14" 2GHZ, 2GB RAM', 15, 399.99, 315.68, 103)   
INSERT INTO TB_Producto (Codigo_Producto, Descripcion_Producto, Cantidad_Inventario, Precio_Venta, Precio_Costo, Codigo_Proveedor) VALUES (100005, 'NoteBook ACER 14" 2GHZ, 4GB RAM', 10, 599.99, 525.30, 104)   
INSERT INTO TB_Producto (Codigo_Producto, Descripcion_Producto, Cantidad_Inventario, Precio_Venta, Precio_Costo, Codigo_Proveedor) VALUES (100006, 'Memoria USB 16GB Kingston', 100, 32.25, 24.65, 100)   
INSERT INTO TB_Producto (Codigo_Producto, Descripcion_Producto, Cantidad_Inventario, Precio_Venta, Precio_Costo, Codigo_Proveedor) VALUES (100007, 'Memoria USB 32GB Kingston', 75, 60.05, 51.90, 103)   
Go

/* Insertar Registros VENTAS (Se calculan los campos Monto_Total e Impuesto, ya que hay que calcular el Monto Total en funci�n del Precio Producto * Cantidad de la Tabla Detalle Venta */
INSERT INTO TB_Factura_Venta (Codigo_Factura, Fecha_Factura, Codigo_Cliente, Monto_Total, Impuesto, Descuento)VALUES (1000, '28/03/2012', '00001', 520.74, 36.45 ,0)
INSERT INTO TB_Factura_Venta (Codigo_Factura, Fecha_Factura, Codigo_Cliente, Monto_Total, Impuesto, Descuento)VALUES (1001, '02/04/2012', '00001', 399.99, 27.99, 0)
INSERT INTO TB_Factura_Venta (Codigo_Factura, Fecha_Factura, Codigo_Cliente, Monto_Total, Impuesto, Descuento)VALUES (1002, '02/04/2012', '00002', 180.15, 12.61, 0)
INSERT INTO TB_Factura_Venta (Codigo_Factura, Fecha_Factura, Codigo_Cliente, Monto_Total, Impuesto, Descuento)VALUES (1003, '08/04/2012', '00003', 1013.04,70.91, 0)
INSERT INTO TB_Factura_Venta (Codigo_Factura, Fecha_Factura, Codigo_Cliente, Monto_Total, Impuesto, Descuento)VALUES (1004, '12/04/2012', '00001', 161.25, 11.28, 0)
INSERT INTO TB_Factura_Venta (Codigo_Factura, Fecha_Factura, Codigo_Cliente, Monto_Total, Impuesto, Descuento)VALUES (1005, '15/04/2012', '00002', 1119.98, 83.99,0)
INSERT INTO TB_Factura_Venta (Codigo_Factura, Fecha_Factura, Codigo_Cliente, Monto_Total, Impuesto, Descuento)VALUES (1006, '20/04/2012', '00005', 1283.00, 89.81,0)
Go

/* Insertar Registros Detalle_Venta*/

INSERT INTO TB_Detalle_Factura_Venta (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (1, 1000, 100001, 2)
INSERT INTO TB_Detalle_Factura_Venta (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (2, 1000, 100003, 1)
INSERT INTO TB_Detalle_Factura_Venta (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (1, 1001, 100004, 1)
INSERT INTO TB_Detalle_Factura_Venta (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (1, 1002, 100007, 3)
INSERT INTO TB_Detalle_Factura_Venta (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (1, 1003, 100001, 1)
INSERT INTO TB_Detalle_Factura_Venta (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (2, 1003, 100005, 1)
INSERT INTO TB_Detalle_Factura_Venta (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (3, 1003, 100006, 1)
INSERT INTO TB_Detalle_Factura_Venta (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (4, 1003, 100007, 1)
INSERT INTO TB_Detalle_Factura_Venta (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (1, 1004, 100006, 5)
INSERT INTO TB_Detalle_Factura_Venta (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (1, 1005, 100005, 2)
INSERT INTO TB_Detalle_Factura_Venta (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (1, 1006, 100001, 4)

/* Insertar Registros Pagos - Ventas. La Factura 1006 tiene saldo pendiente de 250.00. La Factura 1005 tiene saldo pendiente de 200.00 */
INSERT INTO TB_Pago_Factura_Venta (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto) VALUES (1, 1000, '29/03/2012',120.74)
INSERT INTO TB_Pago_Factura_Venta (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto) VALUES (2, 1000, '05/04/2012',200.00)
INSERT INTO TB_Pago_Factura_Venta (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto) VALUES (3, 1000, '18/04/2012',100.00)
INSERT INTO TB_Pago_Factura_Venta (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto) VALUES (4, 1000, '15/05/2012',100.00)
INSERT INTO TB_Pago_Factura_Venta (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto) VALUES (1, 1001, '02/04/2012', 399.99)
INSERT INTO TB_Pago_Factura_Venta (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto) VALUES (1, 1002, '02/04/2012', 80.15)
INSERT INTO TB_Pago_Factura_Venta (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto) VALUES (2, 1002, '28/04/2012', 100.00)
INSERT INTO TB_Pago_Factura_Venta (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto) VALUES (1, 1003, '08/04/2012', 500.00)
INSERT INTO TB_Pago_Factura_Venta (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto) VALUES (2, 1003, '25/04/2012', 300.00)
INSERT INTO TB_Pago_Factura_Venta (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto) VALUES (3, 1003, '15/05/2012', 213.04)
INSERT INTO TB_Pago_Factura_Venta (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto) VALUES (1, 1004, '12/04/2012', 161.25)
INSERT INTO TB_Pago_Factura_Venta (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto) VALUES (1, 1005, '15/04/2012', 319.98)
INSERT INTO TB_Pago_Factura_Venta (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto) VALUES (2, 1005, '30/04/2012', 300.00)
INSERT INTO TB_Pago_Factura_Venta (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto) VALUES (3, 1005, '15/05/2012', 300.00)
INSERT INTO TB_Pago_Factura_Venta (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto) VALUES (1, 1006, '20/04/2012', 283.00)
INSERT INTO TB_Pago_Factura_Venta (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto) VALUES (2, 1006, '03/05/2012', 200.00)
INSERT INTO TB_Pago_Factura_Venta (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto) VALUES (3, 1006, '17/05/2012', 300.00)
INSERT INTO TB_Pago_Factura_Venta (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto) VALUES (4, 1006, '06/06/2012', 250.00)

/* Insertar Registros Compra a Proveedor*/
INSERT INTO TB_Factura_Compra (Codigo_Factura, Fecha_Factura, Codigo_Proveedor, Monto_Total, Impuesto, Descuento) VALUES (2001, '01/02/2012', 103, 13300.00, 931.00, 0)
INSERT INTO TB_Factura_Compra (Codigo_Factura, Fecha_Factura, Codigo_Proveedor, Monto_Total, Impuesto, Descuento) VALUES (2002, '17/02/2012', 100, 11393.30, 797.53, 0)
INSERT INTO TB_Factura_Compra (Codigo_Factura, Fecha_Factura, Codigo_Proveedor, Monto_Total, Impuesto, Descuento) VALUES (2003, '01/03/2012', 102, 3581.00, 250.67, 0)
INSERT INTO TB_Factura_Compra (Codigo_Factura, Fecha_Factura, Codigo_Proveedor, Monto_Total, Impuesto, Descuento) VALUES (2004, '19/03/2012', 103, 7950.00, 556.50, 0)
INSERT INTO TB_Factura_Compra (Codigo_Factura, Fecha_Factura, Codigo_Proveedor, Monto_Total, Impuesto, Descuento) VALUES (2005, '26/03/2012', 102, 2776.50 ,194.35, 0)
INSERT INTO TB_Factura_Compra (Codigo_Factura, Fecha_Factura, Codigo_Proveedor, Monto_Total, Impuesto, Descuento) VALUES (2006, '04/05/2012', 100, 7009.90, 490.69, 0)


/* Insertar Registros Detalle de Compra a Proveedor*/
INSERT INTO TB_Detalle_Factura_Compra (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (1, 2001, 100001, 20)
INSERT INTO TB_Detalle_Factura_Compra (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (2, 2001, 100002, 15)
INSERT INTO TB_Detalle_Factura_Compra (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (1, 2002, 100003, 40)
INSERT INTO TB_Detalle_Factura_Compra (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (2, 2002, 100004, 10)
INSERT INTO TB_Detalle_Factura_Compra (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (3, 2002, 100005, 5)
INSERT INTO TB_Detalle_Factura_Compra (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (1, 2003, 100006, 40)
INSERT INTO TB_Detalle_Factura_Compra (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (2, 2003, 100007, 50)
INSERT INTO TB_Detalle_Factura_Compra (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (1, 2004, 100001, 10)
INSERT INTO TB_Detalle_Factura_Compra (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (2, 2004, 100002, 10)
INSERT INTO TB_Detalle_Factura_Compra (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (1, 2005, 100006, 60)
INSERT INTO TB_Detalle_Factura_Compra (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (2, 2005, 100007, 25)
INSERT INTO TB_Detalle_Factura_Compra (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (1, 2006, 100003, 20)
INSERT INTO TB_Detalle_Factura_Compra (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (2, 2006, 100004, 5)
INSERT INTO TB_Detalle_Factura_Compra (IdDetalle, Codigo_Factura, Codigo_Producto, Cantidad) VALUES (3, 2006, 100005, 5)

/* Insertar Registros Pagos - Compras - La Factura 2006 tiene saldo pendiente de pago 3000.00 */
INSERT INTO TB_Pago_Factura_Compra (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto, Impuesto) VALUES (1, 2001, '01/02/2012', 7300.00, 931.00)
INSERT INTO TB_Pago_Factura_Compra (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto, Impuesto) VALUES (1, 2002, '17/02/2012', 7393.30, 797.53)
INSERT INTO TB_Pago_Factura_Compra (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto, Impuesto) VALUES (1, 2003, '01/03/2012', 3581.00, 250.67)
INSERT INTO TB_Pago_Factura_Compra (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto, Impuesto) VALUES (2, 2001, '06/03/2012', 4000.00, 0)
INSERT INTO TB_Pago_Factura_Compra (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto, Impuesto) VALUES (2, 2002, '13/02/2012', 3000.30, 0)
INSERT INTO TB_Pago_Factura_Compra (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto, Impuesto) VALUES (1, 2004, '19/03/2012', 4950.00, 556.50)
INSERT INTO TB_Pago_Factura_Compra (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto, Impuesto) VALUES (1, 2005, '26/03/2012', 2776.50 ,194.35)
INSERT INTO TB_Pago_Factura_Compra (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto, Impuesto) VALUES (1, 2006, '04/05/2012', 4000.90, 490.69)
INSERT INTO TB_Pago_Factura_Compra (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto, Impuesto) VALUES (3, 2001, '07/05/2012', 2000.00, 0)
INSERT INTO TB_Pago_Factura_Compra (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto, Impuesto) VALUES (3, 2002, '10/05/2012', 1000.00, 0)
INSERT INTO TB_Pago_Factura_Compra (Numero_Pago, Codigo_Factura, Fecha_Pago, Monto, Impuesto) VALUES (2, 2004, '10/05/2012', 3000.00, 0)


/* Fin del Script de Creaci�n de la Base de Datos DB_EmpresaXYZ */