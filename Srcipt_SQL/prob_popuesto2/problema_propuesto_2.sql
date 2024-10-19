USE DB_EmpresaXYZ
GO
CREATE PROCEDURE GenerarCartaCandidato
    @NombrePersona VARCHAR(50),
    @AnoNacimiento INT
AS
BEGIN
    DECLARE @Edad INT,
            @FechaActual DATE = GETDATE(),
            @DiaActual NVARCHAR(50),
            @NumeroDia INT,
            @MesActual NVARCHAR(50),
            @AnoActual INT,
            @Mensaje NVARCHAR(MAX);
    
    -- Calcular la edad del candidato
    SET @Edad = YEAR(@FechaActual) - @AnoNacimiento;

    -- Obtener los componentes de la fecha
    SET @DiaActual = DATENAME(dw, @FechaActual);       -- Nombre del d�a
    SET @NumeroDia = DAY(@FechaActual);                -- N�mero del d�a
    SET @MesActual = 'de ' + DATENAME(month, @FechaActual); -- Nombre del mes
    SET @AnoActual = YEAR(@FechaActual);               -- A�o actual
    
    -- Encabezado de la carta
    SET @Mensaje = 'San Antonio, Atalaya, ' + @DiaActual + ' ' 
                   + CAST(@NumeroDia AS NVARCHAR(2)) + ' de ' 
                   + @MesActual + ' ' + CAST(@AnoActual AS NVARCHAR(4)) + CHAR(10) + CHAR(10);

    -- Cuerpo de la carta
    SET @Mensaje = @Mensaje + 'Apreciado Candidato: ' + @NombrePersona 
                   + ', seg�n las normas de la empresa, se requiere personal mayor de 18 a�os.' 
                   + CHAR(10) + 'Seg�n los datos de su hoja de vida, usted tiene ' + CAST(@Edad AS NVARCHAR(3)) + ' a�os.' + CHAR(10) + CHAR(10);

    -- Verificar si el candidato cumple con la edad m�nima de 18 a�os
    IF @Edad >= 18
    BEGIN
        -- Mensaje para candidatos que cumplen la edad
        SET @Mensaje = @Mensaje + 'Por favor presentarse a la oficina de la empresa a partir de ma�ana a las 08:00 a.m. para tomar posesi�n del cargo en oposici�n.' 
                       + CHAR(10) + CHAR(10);
    END
    ELSE
    BEGIN
        -- Mensaje para candidatos que no cumplen con la edad m�nima
        SET @Mensaje = @Mensaje + 'Usted no cumple la edad m�nima requerida para el puesto. Por favor, agradecemos su inter�s en trabajar en esta empresa.' 
                       + CHAR(10) + 'Una vez cumplida la edad exigida, le invitamos a formar parte de la base de datos de candidatos de nuestra empresa.' 
                       + CHAR(10) + CHAR(10);
    END

    -- Pie de la carta
    SET @Mensaje = @Mensaje + 'Sin otro particular.' + CHAR(10)
                   + 'Atentamente,' + CHAR(10)
                   + 'Director de Recursos Humanos' + CHAR(10)
                   + 'Empresas XYZ Inc.' + CHAR(10);

    -- Imprimir la carta
    PRINT @Mensaje;
END
GO