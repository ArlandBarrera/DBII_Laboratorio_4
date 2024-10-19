USE DB_EmpresaXYZ
GO

--Problema resuelto 1
/*
Estructura IF. Evaluando el comportamiento.
*/
--Ejemplo 1
IF 1 = 1
	PRINT 'La Expresión Boleana es Verdadera'
ELSE
	PRINT 'La Expresión Boleana es Falsa';
GO

--Problema resuelto 2
/*
Estructura IF. Evaluando el comportamiento.
*/
--Ejemplo 2
DECLARE @Numero int;
SET @Numero = 5;
IF @Numero > 100 PRINT
	'El Número es Mayor que Umbral Máximo Permitido de 100.';
ELSE
	BEGIN
		IF @Numero < 10
			PRINT 'El Número está por debajo del Umbral Mínimo de 10.';
		ELSE
			PRINT 'El Número está en el Rango del Umbral Mínimo y Máximo';
	END;
GO

--Problema resuelto 3
/*
Estructura IF. Evaluando el comportamiento.
*/
--Ejemplo 3
Declare @Nombre varchar(20), @Apellido varchar(20)
SET @Nombre='Juan'
SET @Apellido ='Molinar'
IF (@Nombre <> '' and @Apellido <> '')
	BEGIN
		PRINT 'Nuevo Registrado Validado para insertar'
	END
ELSE
	BEGIN
		PRINT 'Se requiere por lo menos el nombre y apellido del Estudiante'
	END
GO

--Problema resuelto 4
/*
Estructura IF. Evaluando el comportamiento.
*/
--Ejemplo 4
DECLARE @Id Int, @Descripcion varchar(50), @Cantidad int, @Venta money,
@Costo money;
SET @Id = 100008;
SET @Descripcion ='Bocina inalambrica'; 
SET @Cantidad = 25; SET @Venta = 50.50;
SET @Costo = 40.75;
IF EXISTS(SELECT * FROM TB_Producto WHERE Codigo_Producto = @Id)
	BEGIN
		PRINT 'Ya existe un registro con ese codigo' 
	END 
ELSE
	BEGIN
		INSERT INTO TB_Producto(Codigo_Producto, Descripcion_Producto,
		Cantidad_Inventario, Precio_Venta, Precio_Costo)
		VALUES(@Id, @Descripcion, @Cantidad, @Venta, @costo);
	END
GO

--Problema resuelto 5
DECLARE @Calificacion INT, @NotaLetra VARCHAR(1)
SET @Calificacion=50
SET @NotaLetra= (CASE
	WHEN @Calificacion >= 90 THEN 'A'
	WHEN @Calificacion >= 81 AND @Calificacion < 90 THEN 'B'
	WHEN @Calificacion >= 71 AND @Calificacion < 80 THEN 'C'
	WHEN @Calificacion >= 61 AND @Calificacion < 70 THEN 'D'
	ELSE 'F'
END)
SELECT 'Su Evaluación correspondiente es: ' + @NotaLetra [Nota del Estudiante]
GO

--Problema resuelto 6
/*
Estructura CASE. Evaluando el comportamiento.
*/
--Ejemplo 1
SELECT Codigo_Producto As Codigo, Descripcion_Producto As Descripcion,
Precio_Venta as Precio,
CASE
	WHEN Precio_Venta < 50 THEN 'El producto es accesible'
	WHEN Precio_Venta >= 50 AND Precio_Venta < 200 THEN 'El producto es medianamente accesible'
	ELSE 'El producto es inaccesible'
END
AS Mensaje FROM TB_Producto;

--Problema resuelto 7
/*
Estructura CASE. Evaluando el comportamiento.
*/
--Ejemplo 2
DECLARE @Precio MONEY, @Nombre varchar (50), @Producto INT, @Mensaje varchar(50)
SET @Producto = 100004
SELECT @Precio = Precio_Venta, @Nombre = Descripcion_Producto FROM TB_Producto
WHERE Codigo_Producto = @Producto
SET @Mensaje = (CASE
	WHEN @Precio < 50 THEN 'Producto es accesible'
	WHEN @Precio >= 50 AND @Precio < 200 THEN 'Producto es medianamente accesible'
	ELSE 'Producto es inaccesible'
END )
--Imprimir la consulta
print 'El producto : ' + @Nombre + ', el : ' + @Mensaje
GO

--Problema resuelto 8
/*
Estructura WHILE. Evaluando el comportamiento.
*/
--Ejemplo 1
DECLARE @Bandera INT
SET @Bandera = 1
WHILE (@Bandera <=5)
BEGIN
	PRINT @Bandera
	SET @Bandera = @Bandera + 1
	IF @Bandera = 4 
	BEGIN
		PRINT 'Alcanzado el Umbral: ' + CAST(@Bandera AS VARCHAR(2)) 
		BREAK;
	END 
END 
GO

--Problema resuelto 9
/*
Estructura WHILE. Evaluando el comportamiento.
*/
--Ejemplo 2
DECLARE @IdRecurso INT;
SET @IdRecurso = 0;
WHILE @IdRecurso <= 10 
BEGIN 
	PRINT 'www.utp.ac.pa/BDII/Recurso' + CAST(@IdRecurso AS VARCHAR(2)) 
	SET @IdRecurso = @IdRecurso + 1
END
PRINT ' ' 
PRINT '--------------------------------------------------------------' 
PRINT 'Cantidad de Recursos Disponibles para BDII: ' + CAST(@IdRecurso AS VARCHAR(2)); 
GO

--Problema resuelto 10
/* 
Estructura WHILE. Evaluando el comportamiento. 
*/ 
DECLARE @Cadena CHAR(15), @LCadena INT, @Indice INT, @Caracter CHAR(1), @Contar INT
SET @Cadena = 'Base de Datos' 
SET @Contar= 0 
SET @Indice = 1 
SET @LCadena= LEN(@Cadena)
WHILE @Indice<= @LCadena 
BEGIN
	SET @Caracter = SUBSTRING(@Cadena, @Indice, 1) 
	PRINT @Caracter 
	SET @Indice= @Indice+ 1
END 
GO

--Problema resuelto 11
/*
Estructura WHILE. Evaluando el comportamiento. 
*/ 
WHILE (SELECT AVG(Precio_Venta) FROM TB_Producto) < 500 
BEGIN
	UPDATE TB_PRODUCTO SET Precio_Venta = Precio_Venta * 2 
	IF (SELECT MAX(Precio_Venta) FROM TB_Producto) > 1000 
		BREAK
	ELSE 
		CONTINUE
END 
GO

--Problema propuesto 1
/*Escriba el código SQL para validar la introducción de nuevos productos a la base de datos DB_Empresa_ZYZ
utilizando estructura de control a través del campo “Descripcion_Producto”. Si el producto no existe, se
registra el nuevo producto en la tabla correspondiente. De lo contrario si el producto ya aparece registrado
con la descripción enviada, se envía un mensaje al usuario indicando que el “Producto ya está registrado”*/

--Problema propuesto 2
/*Escriba el código SQL que permita imprimir una carta del Departamento de Recursos Humano de la Empresa
Empresas XYZ Inc a candidatos a puestos de trabajo. La carta debe incluir la fecha actual de forma dinámica
como sigue: “San Antonio, Atalaya, ” + [nombre del día ] + [número de día ] + “de” + [Numero de año]. Donde
[nombre del día] debe ser extraído de la fecha del sistema al igual que el [número de día] y el [Numero de año].
El cuerpo de la carta será elaborado dentro de un procedimiento que recibirá como parámetro de entrada una
variable NombrePersona como varchar(50) y el año de nacimiento como un valor entero. Estos valores estarán
almacenados en las variables respectivas. La nota se debe elaborar de forma personalizada con el siguiente texto:

Apreciado Candidato: Fulano de Tal según las normas de la empresa, se requiere personal mayor de 18 Años.
Según los datos de su hoja de vida, usted tiene [Edad calculada].

Luego la lógica del procedimiento almacenado debe permitir imprimir un mensaje personalizado si el candidato es
mayor de 18 años para ser aceptado en la empresa como sigue:

Por favor presentarse a la oficina de la empresa a partir de mañana a las 08:00 a.m. para tomar posesión del
cargo en oposición.

De lo contrario se debe imprimir un mensaje al candidato con el texto:

Usted no cumple la edad mínima requerida para el puesto. Por favor, agradecemos su interés en trabajar en esta
empresa. Una vez cumplida la edad exigida, le invitamos a formar parte de la base de datos de candidatos de
nuestra empresa.

Sin otro particular.
Atentamente

Director de Recursos Humanos
Empresas XYZ Inc.*/

--Problema propuesto 3
/*Escriba el código SQL de una función para categorizar los proveedores de la base de datos DB_EmpresaXYZ a
partir de un monto almacenado pasado como parámetro a la función. A partir del monto total acumulado de las
ventas realizadas por cada proveedor se desea categorizar los proveedores como “Proveedor VIP” si supera el
monto umbral de compras. “Proveedor Frecuente” si está en el rango de menor que el monto umbral y mayor que
el 30% del monto umbral establecido. “Proveedor Regular” si está por debajo del 30% del monto umbral establecido.*/

--Problema propuesto 4
/*Escriba el código SQL para reservar 5 códigos de productos nuevos pendientes por definir. La información
de los campos restantes se completarán con datos por defecto, que luego se pueden modificar. Se debe realizar
un procedimiento mediante una estructura repetitiva para crear los nuevos códigos de los productos. Adicional,
se debe determinar internamente cuál es el último identificador de producto registrado para iniciar la
reservación de los nuevos códigos, el resto de información (Descripcion_Producto, Cantidad_Inventario,
Precio_Venta, Precio_Costo, codigo_Proveedor) es la siguiente: Descripcion_Producto=”Nuevo Producto Por Definir”,
Cantidad_Inventario=0, Precio_Venta=0, Precio_Costo=0, Codigo_proveedor=100*/