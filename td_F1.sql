--F1
CREATE TABLE [dbo].[F1_carreras](
	[idCircuito] [int] NOT NULL,
	[idPiloto] [int] NOT NULL,
	[distancia] [int] NULL,
	[lugar] [int] NULL,
	[puntaje] [int] NULL,
	[carreraTerminada] [bit] NULL,
	[motivo] [varchar](255) NULL,
)

CREATE TABLE [dbo].[F1_circuitos](
	[id] [int] NOT NULL,
	[fecha] [varchar](50) NULL,
	[nombre] [varchar](255) NULL,
	[bandera] [varchar](255) NULL,
	[pista] [varchar](255) NULL,
	[isActive] [bit] NULL,
)

CREATE TABLE [dbo].[F1_escuderia](
	[id] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[bandera] [varchar](255) NULL,
) 

CREATE TABLE [dbo].[F1_pilotos](
	[id] [int] NOT NULL,
	[nombre] [varchar](50) NULL,
	[isAlive] [bit] NULL,
	[auto] [varchar](255) NULL,
	[idEscuderia] [int] NULL
)

INSERT [dbo].[F1_circuitos] ([id], [fecha], [nombre], [bandera], [pista], [isActive]) 
VALUES 
	(1, N'3 - 5 de mar.', N'Gulf Air Bahrain GP, Bahrain International Circuit', N'/img/flags/1Bahrain.png', N'/img/pistas/pista01.svg', 1),
	(2, N'17 - 19 de mar.', N'STC Saudi Arabian GP, Jeddah Street Circuit', N'/img/flags/2ArabiaSaudita.png', N'/img/pistas/pista02.svg', 1),
	(3, N'31 mar. - 2 abr.', N'Rolex Australian GP, Circuito Grand Prix Melbourne', N'/img/flags/3Australia.png', N'/img/pistas/pista03.svg', 1),
	(4, N'28 - 30 de abr.', N'GP de Azerbaiyán, Baku City Circuit', N'/img/flags/4Azerbaiyan.png', N'/img/pistas/pista04.svg', 1),
	(5, N'5 - 7 de may.', N'Crypto.com Miami GP, Miami International Autodrome', N'/img/flags/5Miami.png', N'/img/pistas/pista05.svg', 1),
	(6, N'19 - 21 de may.', N'Made in Italy Emilia Romagna GP, Autodromo Enzo e Dino Ferrari', N'/img/flags/6Italia.png', N'/img/pistas/pista06.svg', 1),
	(7, N'26 - 28 de may.', N'GP de Mónaco, Circuit de Monaco', N'/img/flags/7Monaco.png', N'/img/pistas/pista07.svg', 1),
	(8, N'2 - 4 de jun.', N'AWS Spanish GP, Circuit de Barcelona-Catalunya', N'/img/flags/8España.png', N'/img/pistas/pista08.svg', 1),
	(9, N'16 - 18 de jun.', N'Pirelli Canada GP, Circuit Gilles-Villeneuve', N'/img/flags/9Canada.png', N'/img/pistas/pista09.svg', 1),
	(10, N'30 jun. - 2 jul.', N'GP de Austria, Red Bull Ring', N'/img/flags/10Austria.png', N'/img/pistas/pista10.svg', 1),
	(11, N'7 - 9 de jul.', N'Aramco British GP, Silverstone Circuit', N'/img/flags/11ReinoUnido.png', N'/img/pistas/pista11.svg', 1),
	(12, N'21 - 23 de jul.', N'GP de Hungría, Hungaroring', N'/img/flags/12Hungria.png', N'/img/pistas/pista12.svg', 1),
	(13, N'28 - 30 de jul.', N'GP de Bélgica, Circuit de Spa-Francorchamps', N'/img/flags/13Belgica.png', N'/img/pistas/pista13.svg', 1),
	(14, N'25 - 27 de ago.', N'Heineken Dutch GP, Circuit Park Zandvoort', N'/img/flags/14Holanda.png', N'/img/pistas/pista14.svg', 1),
	(15, N'1 - 3 de sep.', N'Pirelli Italian GP, Autodromo Nazionale Monza', N'/img/flags/15Italia.png', N'/img/pistas/pista15.svg', 1),
	(16, N'15 - 17 de sep.', N'Singapore Airlines Singapore GP, Marina Bay Street Circuit', N'/img/flags/16Singapore.png', N'/img/pistas/pista16.svg', 1),
	(17, N'22 - 24 de sep.', N'Lenovo Japanese GP, Suzuka International Racing Course', N'/img/flags/17Japan.png', N'/img/pistas/pista17.svg', 1),
	(18, N'6 - 8 de oct.', N'Qatar GP, Losail International Circuit', N'/img/flags/18Qatar.png', N'/img/pistas/pista18.svg', 1),
	(19, N'20 - 22 de oct.', N'Lenovo United States GP, Circuit of the Americas', N'/img/flags/19EEUU.png', N'/img/pistas/pista19.svg', 1),
	(20, N'27 - 29 de oct.', N'Mexico GP, Autodromo Hermanos Rodriguez', N'/img/flags/20Mexico.png', N'/img/pistas/pista20.svg', 1),
	(21, N'3 - 5 de nov.', N'Rolex Brazil GP, Autodromo Jose Carlos Pace', N'/img/flags/21Brazil.png', N'/img/pistas/pista21.svg', 1),
	(22, N'17 - 19 de nov.', N'Heineken Las Vegas GP, Las Vegas Street Circuit', N'/img/flags/22LasVegas.png', N'/img/pistas/pista22.svg', 1),
	(23, N'24 - 26 de nov.', N'Etihad Airways Abu Dhabi GP, Yas Marina Circuit', N'/img/flags/23AbuDhabi.png', N'/img/pistas/pista01.svg', 1)

INSERT [dbo].[F1_escuderia] ([id], [nombre], [bandera]) 
VALUES 
	(1, N'Alfa Romeo', N'/img/team/1alfaromeo.jpg'),
	(2, N'Alpine', N'/img/team/2alpine.jpeg'),
	(3, N'Alpha Tauri', N'/img/team/3alphatauri.jpeg'),
	(4, N'Aston Martin', N'/img/team/4astonmartin.png'),
	(5, N'Ferrari', N'/img/team/5ferrari.jpg'),
	(6, N'Haas', N'/img/team/6haas.jpg'),
	(7, N'McLaren', N'/img/team/7maclaren.jpg'),
	(8, N'Mercedes', N'/img/team/8mercedes.jpeg'),
	(9, N'Red Bull', N'/img/team/9redbull.jpeg'),
	(10, N'Williams', N'/img/team/10williams.jpeg')

INSERT [dbo].[F1_pilotos] ([id], [nombre], [isAlive], [auto], [idEscuderia]) 
VALUES 
	(1, N'Valtteri Bottas', 1, N'/img/cars/car_01.svg', 1),
	(2, N'Guanyu Zhou', 1, N'/img/cars/car_01.svg', 1),
	(3, N'Esteban Ocon', 1, N'/img/cars/car_02.svg', 2),
	(4, N'Pierre Gasly', 1, N'/img/cars/car_02.svg', 2),
	(5, N'Nyck de Vries', 1, N'/img/cars/car_03.svg', 3),
	(6, N'Yuki Tsunoda', 1, N'/img/cars/car_03.svg', 3),
	(7, N'Lance Stroll', 1, N'/img/cars/car_04.svg', 4),
	(8, N'Fernando Alonso', 1, N'/img/cars/car_04.svg', 4),
	(9, N'Charles Leclerc', 1, N'/img/cars/car_05.svg', 5),
	(10, N'Carlos Sainz', 1, N'/img/cars/car_05.svg', 5),
	(11, N'Kevin Magnussen', 1, N'/img/cars/car_01.svg', 6),
	(12, N'Nico Hulkenberg', 1, N'/img/cars/car_01.svg', 6),
	(13, N'Lando Norris', 1, N'/img/cars/car_02.svg', 7),
	(14, N'Oscar Piastri', 1, N'/img/cars/car_02.svg', 7),
	(15, N'Lewis Hamilton', 1, N'/img/cars/car_03.svg', 8),
	(16, N'George Russell', 1, N'/img/cars/car_03.svg', 8),
	(17, N'Max Verstappen', 1, N'/img/cars/car_04.svg', 9),
	(18, N'Checo Pérez', 1, N'/img/cars/car_04.svg', 9),
	(19, N'Alex Albon', 1, N'/img/cars/car_05.svg', 10),
	(20, N'Logan Sargeant', 1, N'/img/cars/car_05.svg', 10)


CREATE PROCEDURE sp_circuitos
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM F1_circuitos

END

CREATE PROCEDURE sp_circuitosById
	@id AS INT
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM F1_circuitos WHERE id = @id

END

CREATE PROCEDURE sp_circuitosSetById
	@id AS INT
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE F1_circuitos SET isActive = 0
	WHERE id = @id

END

CREATE PROCEDURE sp_pilotos
AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
		a.id,
		a.nombre,
		a.isAlive,
		a.auto,
		a.idEscuderia,
		b.nombre AS escuderia,
		b.bandera,
		0 AS puntos,
		0 AS distancia,
		0 AS incidente,
		'' AS motivo,
		0 AS lugar,
		0 AS carreraTerminada
	FROM F1_pilotos a INNER JOIN F1_escuderia b ON a.idEscuderia = b.id

END

CREATE  PROCEDURE sp_pilotosActivos
AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
		a.id,
		a.nombre,
		a.isAlive,
		a.auto,
		a.idEscuderia,
		b.nombre AS escuderia,
		b.bandera,
		0 AS puntos,
		0 AS distancia,
		0 AS incidente,
		'' AS motivo,
		0 AS lugar,
		0 AS carreraTerminada
	FROM F1_pilotos a INNER JOIN F1_escuderia b ON a.idEscuderia = b.id
	WHERE a.isAlive = 1

END

CREATE PROCEDURE sp_pilotosSetById
	@id AS INT
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE F1_pilotos SET isAlive = 0
	WHERE id = @id

END

CREATE PROCEDURE sp_reset
AS
BEGIN
	SET NOCOUNT ON;
	
	UPDATE F1_pilotos SET isAlive = 1
	UPDATE F1_circuitos SET isActive = 1
	TRUNCATE TABLE F1_carreras

END

ALTER PROCEDURE sp_carreraSet
	@idCircuito AS INT, 
	@idPiloto AS INT, 
	@distancia AS INT, 
	@puntaje AS INT,
	@lugar AS INT, 
	@carreraTerminada AS BIT, 
	@incidente AS BIT, 
	@motivo AS VARCHAR(255)
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE F1_circuitos SET isActive = 0 WHERE id = @idCircuito

	IF (LOWER(@motivo) = 'accidente con muerte')
		BEGIN
			UPDATE F1_pilotos SET isAlive = 0 WHERE id = @idPiloto
		END

	INSERT INTO F1_carreras 
		(idCircuito, idPiloto, distancia, puntaje, lugar, carreraTerminada, incidente, motivo)
	VALUES
		(@idCircuito, @idPiloto, @distancia, @puntaje, @lugar, @carreraTerminada, @incidente, @motivo)

END

CREATE PROCEDURE sp_carrera
AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
		idCircuito, 
		idPiloto, 
		distancia, 
		puntaje, 
		lugar, 
		carreraTerminada, 
		incidente, 
		motivo
	FROM F1_carreras 

END

ALTER PROCEDURE sp_tabla_posiciones
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @Tabla AS Table (
		id INT, 
		escudo VARCHAR(255),
		nombre VARCHAR(50),
		puntos INT,
		c01 VARCHAR(255),
		c02 VARCHAR(255),
		c03 VARCHAR(255),
		c04 VARCHAR(255),
		c05 VARCHAR(255),
		c06 VARCHAR(255),
		c07 VARCHAR(255),
		c08 VARCHAR(255),
		c09 VARCHAR(255),
		c10 VARCHAR(255),
		c11 VARCHAR(255),
		c12 VARCHAR(255),
		c13 VARCHAR(255),
		c14 VARCHAR(255),
		c15 VARCHAR(255),
		c16 VARCHAR(255),
		c17 VARCHAR(255),
		c18 VARCHAR(255),
		c19 VARCHAR(255),
		c20 VARCHAR(255),
		c21 VARCHAR(255),
		c22 VARCHAR(255),
		c23 VARCHAR(255)
	)

	INSERT INTO @Tabla
	SELECT 
		b.id AS idPiloto,
		a.bandera AS escudo,
		b.nombre,
		SUM(ISNULL(c.Puntaje, 0)) AS Puntos,
		'-','-','-','-','-','-','-','-','-','-','-','-',
		'-','-','-','-','-','-','-','-','-','-','-'
	FROM F1_escuderia a 
		INNER JOIN F1_pilotos b ON b.idEscuderia = a.id
		LEFT JOIN F1_carreras c ON c.idPiloto = b.id
	GROUP BY 
		b.id,
		a.bandera,
		b.nombre
	ORDER BY
		SUM(c.Puntaje) DESC

	UPDATE a SET c01 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE b.idCircuito = 1

	UPDATE a SET c02 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 2

	UPDATE a SET c03 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 3

	UPDATE a SET c04 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 4

	UPDATE a SET c05 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 5

	UPDATE a SET c06 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 6

	UPDATE a SET c07 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 7

	UPDATE a SET c08 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 8

	UPDATE a SET c09 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 9

	UPDATE a SET c10 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 10

	UPDATE a SET c11 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 11

	UPDATE a SET c12 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 12

	UPDATE a SET c13 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 13

	UPDATE a SET c14 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 14

	UPDATE a SET c15 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 15

	UPDATE a SET c16 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 16

	UPDATE a SET c17 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 17

	UPDATE a SET c18 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 18

	UPDATE a SET c19 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 19

	UPDATE a SET c20 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 20

	UPDATE a SET c21 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 21

	UPDATE a SET c22 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 22

	UPDATE a SET c23 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 23

	UPDATE a SET c01 = b.puntaje
	FROM @Tabla a INNER JOIN F1_carreras b ON a.id = b.idPiloto
	WHERE idCircuito = 1

	SELECT 
		row_number() OVER (ORDER BY puntos DESC) n,
		* 
	FROM @Tabla

END
	
ALTER PROCEDURE sp_tabla_escuderia
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @Table AS TABLE (bandera VARCHAR(255), nombre VARCHAR(50), puntaje INT)

	INSERT INTO @Table (bandera, nombre, puntaje)
	SELECT 
		a.bandera,
		a.nombre,
		SUM(c.puntaje) AS puntaje
	FROM F1_escuderia a 
		INNER JOIN F1_pilotos b ON a.id = b.idEscuderia
		INNER JOIN F1_carreras c ON b.id = c.idPiloto
	GROUP BY
		a.bandera,
		a.nombre
	ORDER BY
		SUM(c.puntaje) DESC
		
	SELECT 
		row_number() OVER (ORDER BY puntaje DESC) n,
		* 
	FROM @Table

END

ALTER PROCEDURE sp_tabla_abandonos
AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
		a.bandera,
		b.nombre,
		c.motivo,
		COUNT(b.id) AS Cant
	FROM F1_escuderia a 
		INNER JOIN F1_pilotos b ON a.id = b.idEscuderia
		INNER JOIN F1_carreras c ON b.id = c.idPiloto
	WHERE 
		LOWER(motivo) <> 'accidente con muerte' AND motivo <> ''
	GROUP BY
		a.bandera,
		b.nombre,
		c.motivo
	ORDER BY
		a.bandera,
		b.nombre,
		c.motivo

END

ALTER PROCEDURE sp_tabla_fallecidos
AS
BEGIN
	SET NOCOUNT ON;

	SELECT 
		a.bandera,
		b.nombre,
		c.motivo,
		COUNT(b.id) AS Cant
	FROM F1_escuderia a 
		INNER JOIN F1_pilotos b ON a.id = b.idEscuderia
		INNER JOIN F1_carreras c ON b.id = c.idPiloto
	WHERE 
		LOWER(motivo) = 'accidente con muerte'
	GROUP BY
		a.bandera,
		b.nombre,
		c.motivo
	ORDER BY
		a.bandera,
		b.nombre,
		c.motivo

END

SELECT * FROM F1_circuitos
SELECT * FROM F1_escuderia
SELECT * FROM F1_pilotos
SELECT * FROM F1_carreras
--EXECUTE sp_circuitos
--EXECUTE sp_circuitosById 1
--EXECUTE sp_circuitosSetById 1
--EXECUTE sp_pilotos
--EXECUTE sp_pilotosActivos
--EXECUTE sp_pilotosSetById 1
--EXECUTE sp_reset
--EXECUTE sp_carrer
--EXECUTE sp_carreraSet
EXECUTE sp_tabla_posiciones
EXECUTE sp_tabla_escuderia
EXECUTE sp_tabla_abandonos
EXECUTE sp_tabla_fallecidos
