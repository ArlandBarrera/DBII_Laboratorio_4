/* Base de Datos DB_EMPRESA_XYZ
Laboratorio N�2 - Creaci�n de la Estructura de la Base de Datos
Actualizado: 31/08/2020
---> Creando Base de Datos con Opciones B�sicas
Se adicionan las nuevas tablas al modelo b�sico:
-TB_Pago_Factura_Venta
-TB_Factura_Compra
-TB_Detalle_Factura_Compra
-TB_Pago_Factura_Compra
*/


/*
	Comandos para Cambiar el formato fecha cuando se realiza una instalaci�n de SQL Server en Ingles.
	Desde Set Language se formatea que el idioma por defecto es Espa�ol.
	Set DateFormat dmy permite cambiar que el formato sea dd/MM/yyyy
*/

SET LANGUAGE Español
set dateformat dmy

Create Database DB_EmpresaXYZ
ON PRIMARY
(
	Name ='DB_EmpresaXYZ_Data',
	Filename = 'C:\DB_LABORATORIO\DB_EmpresaXYZ.MDF',
	Size = 10MB,
	MAXSIZE = 25,
	FILEGROWTH = 2MB
)
LOG ON
(
	Name='DB_EmpresaXYZ_Log',
	Filename='C:\DB_LABORATORIO\DB_EmpresaXYZ.LDF',
	Size = 4MB,
	MAXSIZE = 10,
	FILEGROWTH = 20%
)
GO
GO


USE DB_EmpresaXYZ
GO

Create Table TB_Proveedor
(
Codigo_Proveedor INT NOT NULL,
Nombre_Proveedor VARCHAR (20) NOT NULL,
PrimerApellido_Proveedor VARCHAR (20) NOT NULL,
SegundoApellido_Proveedor VARCHAR (20),
TelefonoFijo_Proveedor VARCHAR (8),
TelefonoMovil_Proveedor VARCHAR (9),
Direccion_Proveedor VARCHAR (50),
Email_Proveedor VARCHAR (30),
CONSTRAINT PK_TB_Proveedor_Codigo_Proveedor PRIMARY KEY (Codigo_Proveedor)
)
GO

Create Table TB_Cliente   
(
	Codigo_Cliente VARCHAR (5) NOT NULL,
	Cedula_Cliente VARCHAR (13) NOT NULL,
	Nombre_Cliente VARCHAR (20) NOT NULL,
	PrimerApellido_Cliente VARCHAR (20) NOT NULL,
	SegundoApellido_Cliente VARCHAR (20) NOT NULL,
	TelefonoFijo_Cliente VARCHAR (8),
	TelefonoMovil_Cliente VARCHAR (9),
	Direccion_Cliente VARCHAR (50),
	Email_Cliente VARCHAR (30),
	Saldo_Cliente SMALLMONEY,
CONSTRAINT PK_TB_Cliente_Codigo_Cliente PRIMARY KEY (Codigo_Cliente)

)
GO


Create Table TB_Producto
(
Codigo_Producto INT NOT NULL ,
Descripcion_Producto VARCHAR (50)NOT NULL,
Cantidad_Inventario INT NOT NULL,
Precio_Venta MONEY NOT NULL,
Precio_Costo MONEY NOT NULL,
Codigo_Proveedor INT NOT NULL,
CONSTRAINT PK_TB_PRODUCTO_Codigo_Producto PRIMARY KEY (Codigo_Producto),
CONSTRAINT FK_TB_Producto_TB_Proveedor_Codigo_Proveedor FOREIGN KEY (Codigo_Proveedor)REFERENCES TB_Proveedor (Codigo_Proveedor),

)
GO

Create Table TB_Factura_Venta
(
Codigo_Factura INT NOT NULL ,
Fecha_Factura DateTime NOT NULL,
Codigo_Cliente VARCHAR (5) NOT NULL,
Monto_Total Money NOT NULL,
Impuesto Money NOT NULL,
Descuento Money NOT NULL,
CONSTRAINT PK_TB_Factura_Venta_Codigo_Factura PRIMARY KEY (Codigo_Factura),
CONSTRAINT FK_TB_Factura_TB_Clientes_Codigo_Cliente FOREIGN KEY (Codigo_Cliente)REFERENCES TB_Cliente (Codigo_Cliente),
)
GO

Create Table TB_Detalle_Factura_Venta
(
IdDetalle INT NOT NULL,
Codigo_Factura INT NOT NULL,
Codigo_Producto Int NOT NULL,
Cantidad INT NOT NULL,
CONSTRAINT PK_TB_Detalle_Factura_Venta_Codigo_Factura PRIMARY KEY (IdDetalle, Codigo_Factura),
CONSTRAINT FK_TB_Factura_TB_Detalle_Venta_Codigo_Factura FOREIGN KEY (Codigo_Factura)REFERENCES TB_Factura_Venta (Codigo_Factura),
CONSTRAINT FK_TB_Detalle_Factura_Venta_TB_Producto_Codigo_Producto FOREIGN KEY (Codigo_Producto)REFERENCES TB_Producto (Codigo_Producto)
)
GO

/* Tablas Agregadas Nuevas*/

Create Table TB_Pago_Factura_Venta
(
Numero_Pago INT NOT NULL,
Codigo_Factura INT NOT NULL,
Fecha_Pago DateTime NOT NULL,
Monto Money NOT NULL,
CONSTRAINT TB_Pago_Factura_Venta_Numero_Pago_Codigo_Factura PRIMARY KEY (Codigo_Factura, Numero_Pago),
CONSTRAINT FK_TB_Factura_TB_Pago_Factura_Venta_Codigo_Factura FOREIGN KEY (Codigo_Factura)REFERENCES TB_Factura_Venta(Codigo_Factura)
)
GO

Create Table TB_Factura_Compra
(
Codigo_Factura INT NOT NULL ,
Fecha_Factura DateTime NOT NULL,
Codigo_Proveedor INT NOT NULL,
Monto_Total Money NOT NULL,
Impuesto Money NOT NULL,
Descuento Money NOT NULL,
CONSTRAINT PK_TB_Factura_Compra_Codigo_Factura PRIMARY KEY (Codigo_Factura),
CONSTRAINT FK_TB_Factura_Compra_TB_Proveedor_Codigo_Proveedor FOREIGN KEY (Codigo_Proveedor)REFERENCES TB_Proveedor(Codigo_Proveedor),
)
GO

Create Table TB_Detalle_Factura_Compra
(
IdDetalle INT NOT NULL,
Codigo_Factura INT NOT NULL,
Codigo_Producto Int NOT NULL,
Cantidad INT NOT NULL,
CONSTRAINT PK_TB_Detalle_Factura_Compra_IdDetalle_Codigo_Factura PRIMARY KEY (Codigo_Factura, IdDetalle),
CONSTRAINT FK_TB_Factura_Compra_TB_Detalle_Factura_Compra_Codigo_Factura FOREIGN KEY (Codigo_Factura)REFERENCES TB_Factura_Compra(Codigo_Factura),
CONSTRAINT FK_TB_Detalle_Factura_Compra_TB_Producto_Codigo_Producto FOREIGN KEY (Codigo_Producto)REFERENCES TB_Producto (Codigo_Producto)
)
GO

Create Table TB_Pago_Factura_Compra
(
Numero_Pago INT NOT NULL,
Codigo_Factura INT NOT NULL,
Fecha_Pago DateTime NOT NULL,
Monto Money NOT NULL,
Impuesto Money NOT NULL,
CONSTRAINT TB_Pago_Factura_Compra_Numero_Pago_Codigo_Factura PRIMARY KEY (Codigo_Factura, Numero_Pago),
CONSTRAINT FK_TB_Factura_Compra_TB_Pago_Factura_Compra_Codigo_Factura FOREIGN KEY (Codigo_Factura)REFERENCES TB_Factura_Compra(Codigo_Factura)
)
GO


/* Fin del Script de Creaci�n de la Base de Datos DB_EmpresaXYZ */