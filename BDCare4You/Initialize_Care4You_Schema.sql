/******************************************************************************
**  Name: Script SQL Data Base Initialize Care4You
**
**  Authors:	Boris Omar Pérez Santos
**
**  Date: 06/19/2018
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:          Author:						             Description:
** --------     -------------				---------------------------------------------
** 02/05/2019   Boris Omar Perez Santos			Initial version
** 02/06/2019   Ricardo Veizaga					Employee Initialization Data
** 02/06/2019   Alain Quinonez					Initialization Data, contract and type_contract table
** 02/06/2019	Veruzka Onofre					Inserts for TypeEvent, InjuryType, InjuryPart and Eventuality
** 02/07/2019	Boris Omar Perez Santos			Inserts for Audit and SafetyRule
*******************************************************************************/
USE Care4You;

SET XACT_ABORT ON;
SET NOCOUNT ON;

BEGIN TRANSACTION;

PRINT 'Insert data into the Area table...';
INSERT INTO [dbo].[Area](code,name,ModifiedBy)
VALUES ('Elc-01','Electricity', 100);
INSERT INTO [dbo].[Area](code,name,ModifiedBy)
VALUES ('hew-01','Heavy Work', 100);
INSERT INTO [dbo].[Area](code,name,ModifiedBy)
VALUES ('fwo-01','Fine Work', 100);
INSERT INTO [dbo].[Area](code,name,ModifiedBy)
VALUES ('roo-01','Roofed', 100);
INSERT INTO [dbo].[Area](code,name,ModifiedBy)
VALUES ('fro-01','Fake Roof', 100);
INSERT INTO [dbo].[Area](code,name,ModifiedBy)
VALUES ('iog-01','Installation of Gas', 100);
INSERT INTO [dbo].[Area](code,name,ModifiedBy)
VALUES ('flo-01','Flooring', 100);
INSERT INTO [dbo].[Area](code,name,ModifiedBy)
VALUES ('ins-01','Inspection', 100);
INSERT INTO [dbo].[Area](code,name,ModifiedBy)
VALUES ('wsp-01','Work Supervision', 100);
INSERT INTO [dbo].[Area](code,name,ModifiedBy)
VALUES ('hid-01','Hidrosanitary', 100);
PRINT 'Area table done...';

PRINT 'Insert data into the Training table...';
INSERT INTO [dbo].[Training](code,name,instructor,area_id,ModifiedBy)
VALUES ('Elc001','Industrial Electricity','Ing. Rocabado Marcelo',1,100);
INSERT INTO [dbo].[Training](code,name,instructor,area_id,ModifiedBy)
VALUES ('Elc002','Home Electricity','Ing. Rocabado Marcelo',1,100);
INSERT INTO [dbo].[Training](code,name,instructor,area_id,ModifiedBy)
VALUES ('rco001','Reinforced Concrete','Ing. Flores Antonio',2,100);
INSERT INTO [dbo].[Training](code,name,instructor,area_id,ModifiedBy)
VALUES ('hid002','Hidrosanitary Normative','Arq. Romero Luis',10,100);
INSERT INTO [dbo].[Training](code,name,instructor,area_id,ModifiedBy)
VALUES ('Elc003','Industrial Electricity upgrade','Ing. Campero Jose',1,100);
INSERT INTO [dbo].[Training](code,name,instructor,area_id,ModifiedBy)
VALUES ('Elc004','Home Eletricity Normative','Ing. Daza Enrique',1,100);
INSERT INTO [dbo].[Training](code,name,instructor,area_id,ModifiedBy)
VALUES ('igs001','Installation of Gas Normative','Ing. Romero Antonio',6,100);
INSERT INTO [dbo].[Training](code,name,instructor,area_id,ModifiedBy)
VALUES ('far001','Fake Roof Upgrade','Arq. Gutierres Maria',5,100);
INSERT INTO [dbo].[Training](code,name,instructor,area_id,ModifiedBy)
VALUES ('qa001','QA','Ing. Fernandez Rolando',8,100);
INSERT INTO [dbo].[Training](code,name,instructor,area_id,ModifiedBy)
VALUES ('rco002','Reinforced Concrete Normative','Ing. Flores Antonio',2,100);
PRINT 'Training table done...';


PRINT 'Insert data into the Role table...';
INSERT INTO [dbo].[Role](code,[description],ModifiedBy)
VALUES ('hem-001','Home Electicity Manager',100);
INSERT INTO [dbo].[Role](code,[description],ModifiedBy)
VALUES ('hes-001','Home Electicity Supervisor',100);
INSERT INTO [dbo].[Role](code,[description],ModifiedBy)
VALUES ('opp-001','Operator',100);
INSERT INTO [dbo].[Role](code,[description],ModifiedBy)
VALUES ('het-001','Electicity Technical',100);
INSERT INTO [dbo].[Role](code,[description],ModifiedBy)
VALUES ('het-002','Home Electicity Technical',100);
INSERT INTO [dbo].[Role](code,[description],ModifiedBy)
VALUES ('iem-001','Industrial Electicity Manager',100);
INSERT INTO [dbo].[Role](code,[description],ModifiedBy)
VALUES ('hwm-001','Heavy Work Manager',100);
INSERT INTO [dbo].[Role](code,[description],ModifiedBy)
VALUES ('hws-001','Fine Work Supervisor',100);
INSERT INTO [dbo].[Role](code,[description],ModifiedBy)
VALUES ('him-001','Hidrosanitary Manager',100);
INSERT INTO [dbo].[Role](code,[description],ModifiedBy)
VALUES ('his-001','Hidrosanitary Supervisor',100);
PRINT 'Role table done...';

PRINT 'Insert data into the Position table...';
INSERT INTO [dbo].[Position](name,Role_id,ModifiedBy)
VALUES ('Electricity Manager',1,100);
INSERT INTO [dbo].[Position](name,Role_id,ModifiedBy)
VALUES ('Electricity Supervisor',2,100);
INSERT INTO [dbo].[Position](name,Role_id,ModifiedBy)
VALUES ('Instal Hidrosanitary',3,100);
INSERT INTO [dbo].[Position](name,Role_id,ModifiedBy)
VALUES ('Hidrosanitary Manager',9,100);
INSERT INTO [dbo].[Position](name,Role_id,ModifiedBy)
VALUES ('Hidrosanitary Supervisor',10,100);
INSERT INTO [dbo].[Position](name,Role_id,ModifiedBy)
VALUES ('Operator Heavy Work',3,100);
INSERT INTO [dbo].[Position](name,Role_id,ModifiedBy)
VALUES ('Operator Electricity',1,100);
INSERT INTO [dbo].[Position](name,Role_id,ModifiedBy)
VALUES ('Fine Work Manager',8,100);
PRINT 'Position table done...';

PRINT 'Insert data into the Employee table...';
INSERT [dbo].[Employee] ([Dni], [First_Name], [Last_Name], [Address], [Phone], [email], [Job_Description], [Job_Position], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate])
VALUES (N'4507569', N'Miguel', N'Lopez', N'av guillermo urquidi', 4231247, N'm@m.com', N'good driver', N'driver', 100, CAST(N'2018-06-20 22:27:23.723' AS DateTime), 100, CAST(N'2018-06-20 22:27:23.723' AS DateTime))
INSERT [dbo].[Employee] ([Dni], [First_Name], [Last_Name], [Address], [Phone], [email], [Job_Description], [Job_Position], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate])
VALUES (N'232323cb', N'Dave', N'Roberts', N'Av. ayacucho', 4647151, N'daveRbts@hotmail.com', N'good driver', N'Driver', 100, CAST(N'1900-01-01 00:00:00.000' AS DateTime), 100, CAST(N'1900-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Employee] ([Dni], [First_Name], [Last_Name], [Address], [Phone], [email], [Job_Description], [Job_Position], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate])
VALUES (N'25546', N'Marcelo', N'Equise', N'av villazon s/n', 4567897, N'marcelo@hotmail.com', N'constructor', N'constructor', 100, CAST(N'2018-06-21 05:31:01.990' AS DateTime), 100, CAST(N'2018-06-21 05:31:01.990' AS DateTime))
INSERT [dbo].[Employee] ([Dni], [First_Name], [Last_Name], [Address], [Phone], [email], [Job_Description], [Job_Position], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate])
VALUES (N'12354cb', N'Jorge', N'Posada', N'san martin 456', 70700001, N'jposada@hotmail.com', N'Good driver', N'driver', 100, CAST(N'2018-06-21 05:35:18.390' AS DateTime), 100, CAST(N'2018-06-21 05:35:18.390' AS DateTime))
INSERT [dbo].[Employee] ([Dni], [First_Name], [Last_Name], [Address], [Phone], [email], [Job_Description], [Job_Position], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate])
VALUES (N'335293or', N'Rubert ', N'Alba', N'av capitan Ustariz', 70789909, N'alba@hotmail.com', N'chief', N'chief', 100, CAST(N'2018-06-21 05:36:50.283' AS DateTime), 100, CAST(N'2018-06-21 05:36:50.283' AS DateTime))
INSERT [dbo].[Employee] ([Dni], [First_Name], [Last_Name], [Address], [Phone], [email], [Job_Description], [Job_Position], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate])
VALUES (N'798772lp', N'Ivan', N'Paniagua', N'Av blanco galindo', 45078990, N'ivanp@gmail.com', N'guard', N'guard', 100, CAST(N'2018-06-21 05:38:06.297' AS DateTime), 100, CAST(N'2018-06-21 05:38:06.297' AS DateTime))
INSERT [dbo].[Employee] ([Dni], [First_Name], [Last_Name], [Address], [Phone], [email], [Job_Description], [Job_Position], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate])
VALUES (N'677769sc', N'Carolina', N'Andrade', N'calle los ceibos', 67805477, N'candrade@hotmail.com', N'secratary', N'secretary', 100, CAST(N'2018-06-21 05:39:46.970' AS DateTime), 100, CAST(N'2018-06-21 05:39:46.970' AS DateTime))
INSERT [dbo].[Employee] ([Dni], [First_Name], [Last_Name], [Address], [Phone], [email], [Job_Description], [Job_Position], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate])
VALUES (N'7654456or', N'Mario', N'Bross', N'calle 16 de julio 655', 4557768, N'bross@acme.com', N'plumber', N'Plumber', 100, CAST(N'2018-06-21 05:41:41.420' AS DateTime), 100, CAST(N'2018-06-21 05:41:41.420' AS DateTime))
INSERT [dbo].[Employee] ([Dni], [First_Name], [Last_Name], [Address], [Phone], [email], [Job_Description], [Job_Position], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate])
VALUES ( N'798080lp', N'Ernesto', N'Cadima', N'calle junin 789', 4321345, N'cadimaernesto@gmail.com', N'account manager', N'account manager', 100, CAST(N'2018-06-21 05:43:48.140' AS DateTime), 100, CAST(N'2018-06-21 05:43:48.140' AS DateTime))
INSERT [dbo].[Employee] ([Dni], [First_Name], [Last_Name], [Address], [Phone], [email], [Job_Description], [Job_Position], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate])
VALUES (N'765666', N'Pedro', N'Picapiedra', N'calle espana 345', 4321345, N'pedrop@gmail.com', N'supervisor', N'supervisor', 100, CAST(N'2018-06-21 05:45:22.607' AS DateTime), 100, CAST(N'2018-06-21 05:45:22.607' AS DateTime))
INSERT [dbo].[Employee] ([Dni], [First_Name], [Last_Name], [Address], [Phone], [email], [Job_Description], [Job_Position], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate])
VALUES (N'4556577cb', N'Pablo', N'Marmol', N'calle jordan 900', 77606679, N'pablomp@gmail.com', N'builder', N'builder', 100, CAST(N'2018-06-21 05:47:00.390' AS DateTime), 100, CAST(N'2018-06-21 05:47:00.390' AS DateTime))
INSERT [dbo].[Employee] ([Dni], [First_Name], [Last_Name], [Address], [Phone], [email], [Job_Description], [Job_Position], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate])
VALUES (N'4567890cb', N'Demetrio', N'Angulo', N'calle mayor rocha 123', 65455888, N'angulo@gmail.com', N'builder', N'builder', 100, CAST(N'2018-06-21 05:48:12.080' AS DateTime), 100, CAST(N'2018-06-21 05:48:12.080' AS DateTime))
INSERT [dbo].[Employee] ([Dni], [First_Name], [Last_Name], [Address], [Phone], [email], [Job_Description], [Job_Position], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate])
VALUES (N'8979778cb', N'Claudia', N'Mendieta', N'av heroinas 234', 76512300, N'claudia@gmail.com', N'secretary', N'secretary', 100, CAST(N'2018-06-21 05:49:49.183' AS DateTime), 100, CAST(N'2018-06-21 05:49:49.183' AS DateTime))
INSERT [dbo].[Employee] ([Dni], [First_Name], [Last_Name], [Address], [Phone], [email], [Job_Description], [Job_Position], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate])
VALUES ( N'8979778cb', N'Maria', N'Gumucio', N'calle Calama 567', 76512300, N'mariag@gmail.com', N'builder', N'builder', 100, CAST(N'2018-06-21 05:51:23.220' AS DateTime), 100, CAST(N'2018-06-21 05:51:23.220' AS DateTime))
INSERT [dbo].[Employee] ([Dni], [First_Name], [Last_Name], [Address], [Phone], [email], [Job_Description], [Job_Position], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate])
VALUES (N'878787cb', N'Juan', N'Perez', N'calle dario montano 494', 76512300, N'jperez@gmail.com', N'builder', N'builder', 100, CAST(N'2018-06-21 05:52:20.810' AS DateTime), 100, CAST(N'2018-06-21 05:52:20.810' AS DateTime))

	
PRINT 'Employee table done...';

PRINT 'Insert data into the Employee_Training table...';
INSERT INTO [dbo].[Employee_Training](employee_id,training_id,[state],ModifiedBy)
VALUES (1,1,'ACTIVO',100);
INSERT INTO [dbo].[Employee_Training](employee_id,training_id,[state],ModifiedBy)
VALUES (1,2,'ACTIVO',100);
INSERT INTO [dbo].[Employee_Training](employee_id,training_id,[state],ModifiedBy)
VALUES (2,1,'ACTIVO',100);
INSERT INTO [dbo].[Employee_Training](employee_id,training_id,[state],ModifiedBy)
VALUES (3,1,'ACTIVO',100);
INSERT INTO [dbo].[Employee_Training](employee_id,training_id,[state],ModifiedBy)
VALUES (4,2,'ACTIVO',100);
INSERT INTO [dbo].[Employee_Training](employee_id,training_id,[state],ModifiedBy)
VALUES (5,5,'ACTIVO',100);
INSERT INTO [dbo].[Employee_Training](employee_id,training_id,[state],ModifiedBy)
VALUES (1,3,'ACTIVO',100);
INSERT INTO [dbo].[Employee_Training](employee_id,training_id,[state],ModifiedBy)
VALUES (3,1,'ACTIVO',100);
INSERT INTO [dbo].[Employee_Training](employee_id,training_id,[state],ModifiedBy)
VALUES (2,2,'ACTIVO',100);
INSERT INTO [dbo].[Employee_Training](employee_id,training_id,[state],ModifiedBy)
VALUES (3,5,'ACTIVO',100);
PRINT 'Employee_Training table done...';

PRINT 'Insercion de datos dentro la tabla type_Contract ....';
INSERT INTO type_contract ( created_on, updated_on, version, description, responsable, type_contract)
VALUES ('2018-06-24 17:02:20.000', NULL, 0, 'Contrato para obra por un precio fijo (construcción, suministro, montaje) conforme a las especificaciones y a un proyecto de diseño el cual esta prácticamente determinado y validado para construir este no puede tener variaciones importantes.', NULL, 'Suma alzada');
INSERT INTO type_contract ( created_on, updated_on, version, description, responsable, type_contract)
VALUES ('2018-06-24 17:02:47.000', NULL, 0, 'Se usa este tipo de contrato cuando se tiene claramente definida las especificaciones y los planos básicos pero no se tiene totalmente definidas las cantidades de obra que se realizaran ya que dependerá de las características del terreno  y de los detalles propios de los trabajos.', NULL, 'Serie de Precios Unitarios');
INSERT INTO type_contract ( created_on, updated_on, version, description, responsable, type_contract)
VALUES ( '2018-06-24 17:07:38.000', NULL, 0, 'se establece un monto de obra a realizar que incluye utilidades, si los montos disminuyen  el mandante se obliga a pagar el valor garantizado, si por el contrario los montos aumentan  el contratista asume los costos del mayor valor. ', NULL, 'Maximo Garantizado');
INSERT INTO type_contract ( created_on, updated_on, version, description, responsable, type_contract)
VALUES ( '2018-06-24 17:12:26.000', NULL, 0, 'Contrato con especificaciones nos claras que salen o se producen en el transcurso del proyecto ', NULL, 'Gastos rembolsables');
INSERT INTO type_contract ( created_on, updated_on, version, description, responsable, type_contract)
VALUES ( '2018-06-24 17:14:45.000', NULL, 0, 'contrato cuando se quiere acelerar un proyecto, y se inician las obras con los proyectos básicos', NULL, 'Fast Track');
INSERT INTO type_contract ( created_on, updated_on, version, description, responsable, type_contract)
VALUES ( '2018-06-24 17:20:26.000', NULL, 0, 'Contrato por el trabajo en  partes, el pago se realiza por cada parte concluida', NULL, 'Destajo');
INSERT INTO type_contract ( created_on, updated_on, version, description, responsable, type_contract)
VALUES ('2018-06-24 17:05:30.000', NULL, 0, 'Se define la ejecución de un trabajo con una variación que puede ser un porcentaje fijo o una cantidad fija, y la variación (positiva) dentro de lo acordado se paga al costo, si hay variaciones mayores a lo acordado se cobra una tarifa mayor.', NULL, 'Costo Mas');
INSERT INTO type_contract ( created_on, updated_on, version, description, responsable, type_contract)
VALUES ( '2018-06-24 17:15:13.000', NULL, 0, 'Contrato cuando se tiene la concepción básica del proyecto pero se desconoce como serán los terrenos  a excavar y los sostenimientos  o saneamientos que se deberán colocar para la estabilidad de la obra, y estos se irán definiendo a medida que se avanza.', NULL, 'As You Go');
INSERT INTO type_contract ( created_on, updated_on, version, description, responsable, type_contract)
VALUES ( '2018-06-24 17:08:50.000', NULL, 0, 'Contrato de personal que le administrara los trabajos por una remuneración acordada, esta administración ira definiendo los materiales ,equipos y suministros que se vayan empleando para que el mandante vaya cancelando estos costos a medida que la obra avanza.', NULL, 'Administracion');
PRINT 'Tabla Type_contract, insercion Completado...';

PRINT 'Insert data into the Project table...';
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('Edificio acme', 'Edificio Acme ubicado en la calle Z colchero #213/34 departamentos de tipo residencial', '1999-10-10', '2013-10-20', 100, CAST('2018-06-20 22:27:23.723' AS DateTime), 100, CAST('2018-06-20 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('Parque recreativo el Niño', 'Cancha multifuncional zona de juegos paseos peatonales', '2014-02-10', '2015-05-20', 100, CAST('2014-02-10 22:27:23.723' AS DateTime), 100, CAST('2015-05-20 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('construcción del puente Río Guanuma', 'Comunicación de Yamasà y la capital del país', '2000-02-10', '2001-07-20', 100, CAST('2000-02-10 22:27:23.723' AS DateTime), 100, CAST('2001-07-20 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('Hospital Merida', 'Clínica Mérida con 18 consultorios 3 quirófanos', '2011-11-10', '2012-11-01', 100, CAST('2011-11-10 22:27:23.723' AS DateTime), 100, CAST('2012-11-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('Mercado Municipal', 'Barrio PetroleroLa-150 puestos', '2011-06-10', '2012-08-01', 100, CAST('2011-06-10 22:27:23.723' AS DateTime), 100, CAST('2012-08-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('CITE', 'CITE ESCUELA NAVAL Y MILITAR', '2012-01-20', '2016-03-01', 100, CAST('2012-01-20 22:27:23.723' AS DateTime), 100, CAST('2016-03-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('Coliseo Z', 'POLIDEPORTIVO CANCHA MÚLTIPLE', '2012-01-20', '2016-03-01', 100, CAST('2012-01-20 22:27:23.723' AS DateTime), 100, CAST('2016-03-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('Areas Verdes', 'Plaza 14 de Septiembre', '2016-04-20', '2016-06-01', 100, CAST('2016-04-20 22:27:23.723' AS DateTime), 100, CAST('2016-06-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('Obelisco', 'Obelisco CBBA', '2014-02-11', '2014-04-01', 100, CAST('2014-02-11 22:27:23.723' AS DateTime), 100, CAST('2014-04-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('MISICUNI', 'Represa que creará energia agua reservas  abastecimiento para los terrenos productores entre otros', '1990-04-20', '2017-06-01', 100, CAST('1990-04-20 22:27:23.723' AS DateTime), 100, CAST('2017-06-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('Tren Bioceanico', 'Son tres o 4 los departamentos para este proyecto de Bolivia  Brazil Chile', '2015-04-20', '2018-06-01', 100, CAST('2015-04-20 22:27:23.723' AS DateTime), 100, CAST('2018-06-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('Metro', 'Para transporte de Pasajeros y cargas de noche', '2015-04-20', '2018-06-01', 100, CAST('2015-04-20 22:27:23.723' AS DateTime), 100, CAST('2018-06-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('Tranvias', 'Comunicacion de los minucipios de cercado de cbba y Colcaphirua  Quillacollo Sacaba Vinto', '2007-09-09', '2019-05-15', 100, CAST('2007-09-09 22:27:23.723' AS DateTime), 100, CAST('2007-09-09 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('Puente Futurista', 'La construcción de la pasarela peatonal (puente futurista) que unirá al cine Center con el Boulevard de la Recoleta', '2018-01-23', '2020-05-30', 100, CAST('2018-01-23 22:27:23.723' AS DateTime), 100, CAST('2020-05-30 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('CARRETERA ATOCHA - TUPIZA', 'La construcción de la carretera Atocha y Tupiza', '2002-09-09', '2004-05-15', 100, CAST('2002-09-09 22:27:23.723' AS DateTime), 100, CAST('2004-05-15 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('CARRETERA CRUCE CONDO-K - HUANCARANI - UYUNI', 'La construcción de la carretera Huancarani y Uyuno', '2017-09-09', '2019-09-09', 100, CAST('2017-09-09 22:27:23.723' AS DateTime), 100, CAST('2017-09-09 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('TÚNEL AYACUCHO NORTE', 'Conexión directa de la Av. Ayacucho con la Av. Juan de la Rosa', '2018-02-09', '2018-12-15', 100, CAST('2018-02-09 22:27:23.723' AS DateTime), 100, CAST('2018-02-09 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('QUINTANILLA CORREDOR VEHICULAR', 'Generar un flujo vehicular ininterrumpido desde la plazuela de Quintanilla hasta la av. Melchor Urquidi de norte a sur y viceversa.', '2018-09-09', '2018-12-01', 100, CAST('2018-09-09 22:27:23.723' AS DateTime), 100, CAST('2018-12-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('CICLOVÍA NORTE ZONA NORTE', 'Circuito Av América Pando Bulevard de la recoleta plaza Quintanilla', '2018-09-09', '2018-12-01', 100, CAST('2018-09-09 22:27:23.723' AS DateTime), 100, CAST('2018-12-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('Construccion Torre Solera', 'Torre A y B', '2017-09-09', '2017-12-01', 100, CAST('2017-09-09 22:27:23.723' AS DateTime), 100, CAST('2017-12-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('Construccion multiacadémico UMSS', 'La construcción de un moderno edificio multiacadémico de siete pisos', '2016-09-09', '2017-12-01', 100, CAST('2016-09-09 22:27:23.723' AS DateTime), 100, CAST('2017-12-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('Torre Girasoles', 'Los Girasoles "Torre" se proyecta como el rascacielos más alto de Bolivia con un total de 40 pisos 150 metros de altura con una superficie de 2.600 m2 de extensión tendrá 130 apartamentos parques, Aparthotel con 18 apartamentos 4 niveles de estacionamiento con 180 de estacionamiento espacios y 3 pisos para los grandes almacenes', '2018-01-01', '2019-02-01', 100, CAST('2018-01-01 22:27:23.723' AS DateTime), 100, CAST('2019-02-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project]([name],[description],[date_start],[date_end],[createBy],[createDate],[updatedBy],[updateDate])
VALUES('Instituto Oncológico ', 'La construcción del Instituto Oncológico de cuarto nivel en el municipio de Tolata', '2018-01-01', '2019-02-01', 100, CAST('2018-01-01 22:27:23.723' AS DateTime), 100, CAST('2019-02-01 22:27:23.723' AS DateTime));
PRINT 'Project table done...';

PRINT 'Insercion de datos dentro la tabla Contract ....';
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-01-31 00:00:00.000', '2008-06-30 00:00:00.000', 0, '2000', 'OBAL002', '2008-06-30 00:00:00.000', '2008-01-31 00:00:00.000', 'Efectivo', 1, 1, 1, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2007-11-11 00:00:00.000', '2008-04-11 00:00:00.000', 0, '2100', 'OBAL003', '2008-04-11 00:00:00.000', '2007-11-11 00:00:00.000', 'Efectivo', 2, 1, 1, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2007-12-05 00:00:00.000', '2008-05-05 00:00:00.000', 0, '8000', 'OBAL004', '2008-05-05 00:00:00.000', '2007-12-05 00:00:00.000', 'Efectivo', 3, 1, 1, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2010-05-31 00:00:00.000', '2010-10-31 00:00:00.000', 0, '8000', 'OBAL005', '2010-10-31 00:00:00.000', '2010-05-31 00:00:00.000', 'Efectivo', 4, 1, 1, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-01-06 00:00:00.000', '2008-06-06 00:00:00.000', 0, '2200', 'OBAL006', '2008-06-06 00:00:00.000', '2008-01-06 00:00:00.000', 'Efectivo', 5, 8, 1, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-01-24 00:00:00.000', '2008-06-24 00:00:00.000', 0, '2300', 'OBAL007', '2008-06-24 00:00:00.000', '2008-01-24 00:00:00.000', 'Efectivo', 6, 2, 1, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-08 00:00:00.000', '2009-07-08 00:00:00.000', 0, '5000', 'OBAL008', '2009-07-08 00:00:00.000', '2009-02-08 00:00:00.000', 'Efectivo', 7, 2, 1, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-29 00:00:00.000', '2009-05-29 00:00:00.000', 0, '5100', 'OBAL009', '2009-05-29 00:00:00.000', '2008-12-29 00:00:00.000', 'Efectivo', 8, 2, 1, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-16 00:00:00.000', '2009-06-16 00:00:00.000', 0, '5100', 'OBAL010', '2009-06-16 00:00:00.000', '2009-01-16 00:00:00.000', 'Efectivo', 9, 2, 1, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-05-03 00:00:00.000', '2009-10-03 00:00:00.000', 0, '6400', 'OBAL011', '2009-10-03 00:00:00.000', '2009-05-03 00:00:00.000', 'Efectivo', 1, 3, 1, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2010-12-05 00:00:00.000', '2011-05-05 00:00:00.000', 0, '2300', 'OBAL012', '2011-05-05 00:00:00.000', '2010-12-05 00:00:00.000', 'Efectivo', 2, 3, 1, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2007-12-11 00:00:00.000', '2008-05-11 00:00:00.000', 0, '2400', 'OBAL013', '2008-05-11 00:00:00.000', '2007-12-11 00:00:00.000', 'Efectivo', 3, 3, 1, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2010-12-23 00:00:00.000', '2011-05-23 00:00:00.000', 0, '2400', 'OBAL014', '2011-05-23 00:00:00.000', '2010-12-23 00:00:00.000', 'Efectivo', 4, 4, 1, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2010-12-30 00:00:00.000', '2011-05-30 00:00:00.000', 0, '2100', 'OBAL015', '2011-05-30 00:00:00.000', '2010-12-30 00:00:00.000', 'Efectivo', 5, 4, 1, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2011-01-18 00:00:00.000', '2011-06-18 00:00:00.000', 0, '2200', 'OBAL016', '2011-06-18 00:00:00.000', '2011-01-18 00:00:00.000', 'Efectivo', 6, 4, 1, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2007-12-20 00:00:00.000', '2008-05-20 00:00:00.000', 0, '4000', 'OBAL017', '2008-05-20 00:00:00.000', '2007-12-20 00:00:00.000', 'Efectivo', 7, 5, 1, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-07-15 00:00:00.000', '2009-12-15 00:00:00.000', 0, '4000', 'OBAL018', '2009-12-15 00:00:00.000', '2009-07-15 00:00:00.000', 'Efectivo', 8, 5, 1, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2007-01-26 00:00:00.000', '2007-06-26 00:00:00.000', 0, '4100', 'OBAL019', '2007-06-26 00:00:00.000', '2007-01-26 00:00:00.000', 'Efectivo', 9, 5, 1, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2011-02-07 00:00:00.000', '2011-07-07 00:00:00.000', 0, '4400', 'OBAL020', '2011-07-07 00:00:00.000', '2011-02-07 00:00:00.000', 'Efectivo', 10, 6, 1, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2011-02-14 00:00:00.000', '2011-07-14 00:00:00.000', 0, '4100', 'OBAL021', '2011-07-14 00:00:00.000', '2011-02-14 00:00:00.000', 'Efectivo', 11, 6, 1, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2011-01-07 00:00:00.000', '2011-06-07 00:00:00.000', 0, '4000', 'OBAL022', '2011-06-07 00:00:00.000', '2011-01-07 00:00:00.000', 'Efectivo', 12, 6, 1, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-03-02 00:00:00.000', '2009-08-02 00:00:00.000', 0, '4200', 'OBAL023', '2009-08-02 00:00:00.000', '2009-03-02 00:00:00.000', 'Efectivo', 13, 7, 1, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-12-12 00:00:00.000', '2009-05-12 00:00:00.000', 0, '4200', 'OBAL024', '2009-05-12 00:00:00.000', '2008-12-12 00:00:00.000', 'Efectivo', 14, 7, 1, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-01-12 00:00:00.000', '2009-06-12 00:00:00.000', 0, '4300', 'OBAL025', '2009-06-12 00:00:00.000', '2009-01-12 00:00:00.000', 'Efectivo', 15, 7, 1, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-01-18 00:00:00.000', '2009-06-18 00:00:00.000', 0, '4300', 'OBAL026', '2009-06-18 00:00:00.000', '2009-01-18 00:00:00.000', 'Deposito Bancario', 1, 1, 2, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-02-03 00:00:00.000', '2009-07-03 00:00:00.000', 0, '5200', 'OBAL027', '2009-07-03 00:00:00.000', '2009-02-03 00:00:00.000', 'Deposito Bancario', 2, 1, 2, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-12-01 00:00:00.000', '2009-05-01 00:00:00.000', 0, '4100', 'OBAL028', '2009-05-01 00:00:00.000', '2008-12-01 00:00:00.000', 'Deposito Bancario', 3, 1, 2, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-02-27 00:00:00.000', '2008-07-27 00:00:00.000', 0, '6000', 'OBAL029', '2008-07-27 00:00:00.000', '2008-02-27 00:00:00.000', 'Deposito Bancario', 4, 2, 2, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2006-06-30 00:00:00.000', '2006-11-30 00:00:00.000', 0, '3000', 'OBAL030', '2006-11-30 00:00:00.000', '2006-06-30 00:00:00.000', 'Deposito Bancario', 5, 2, 2, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-01-23 00:00:00.000', '2009-06-23 00:00:00.000', 0, '2900', 'OBAL031', '2009-06-23 00:00:00.000', '2009-01-23 00:00:00.000', 'Deposito Bancario', 6, 2, 2, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-01-29 00:00:00.000', '2009-06-29 00:00:00.000', 0, '2700', 'OBAL032', '2009-06-29 00:00:00.000', '2009-01-29 00:00:00.000', 'Deposito Bancario', 7, 2, 2, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-01-04 00:00:00.000', '2009-06-04 00:00:00.000', 0, '2900', 'OBAL033', '2009-06-04 00:00:00.000', '2009-01-04 00:00:00.000', 'Deposito Bancario', 8, 3, 2, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-12-29 00:00:00.000', '2009-05-29 00:00:00.000', 0, '3100', 'OBAL034', '2009-05-29 00:00:00.000', '2008-12-29 00:00:00.000', 'Deposito Bancario', 9, 3, 2, 5);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-12-17 00:00:00.000', '2009-05-17 00:00:00.000', 0, '2800', 'OBAL035', '2009-05-17 00:00:00.000', '2008-12-17 00:00:00.000', 'Deposito Bancario', 10, 3, 2, 5);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-02-16 00:00:00.000', '2009-07-16 00:00:00.000', 0, '2700', 'OBAL036', '2009-07-16 00:00:00.000', '2009-02-16 00:00:00.000', 'Deposito Bancario', 11, 3, 2, 5);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-02-08 00:00:00.000', '2009-07-08 00:00:00.000', 0, '3100', 'OBAL037', '2009-07-08 00:00:00.000', '2009-02-08 00:00:00.000', 'Deposito Bancario', 12, 4, 2, 5);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-02-10 00:00:00.000', '2009-07-10 00:00:00.000', 0, '3000', 'OBAL038', '2009-07-10 00:00:00.000', '2009-02-10 00:00:00.000', 'Deposito Bancario', 13, 4, 2, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-03-07 00:00:00.000', '2009-08-07 00:00:00.000', 0, '2800', 'OBAL039', '2009-08-07 00:00:00.000', '2009-03-07 00:00:00.000', 'Deposito Bancario', 14, 5, 2, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2010-01-16 00:00:00.000', '2010-06-16 00:00:00.000', 0, '3200', 'OBAL040', '2010-06-16 00:00:00.000', '2010-01-16 00:00:00.000', 'Deposito Bancario', 15, 6, 2, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2010-02-05 00:00:00.000', '2010-07-05 00:00:00.000', 0, '3200', 'OBAL041', '2010-07-05 00:00:00.000', '2010-02-05 00:00:00.000', 'Deposito Bancario', 1, 1, 3, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2007-12-26 00:00:00.000', '2008-05-26 00:00:00.000', 0, '5200', 'OBAL042', '2009-07-22 00:00:00.000', '2009-02-22 00:00:00.000', 'Deposito Bancario', 2, 1, 3, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-01-21 00:00:00.000', '2009-06-21 00:00:00.000', 0, '6100', 'OBAL043', '2008-06-06 00:00:00.000', '2008-01-06 00:00:00.000', 'Deposito Bancario', 3, 1, 3, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-12-27 00:00:00.000', '2009-05-27 00:00:00.000', 0, '6400', 'OBAL044', '2008-06-07 00:00:00.000', '2008-01-07 00:00:00.000', 'Deposito Bancario', 4, 2, 3, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-01-02 00:00:00.000', '2009-06-02 00:00:00.000', 0, '6200', 'OBAL045', '2008-07-02 00:00:00.000', '2008-02-02 00:00:00.000', 'Deposito Bancario', 5, 2, 3, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-12-08 00:00:00.000', '2009-05-08 00:00:00.000', 0, '6200', 'OBAL046', '2008-07-20 00:00:00.000', '2008-02-20 00:00:00.000', 'Efectivo', 6, 2, 3, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-02-26 00:00:00.000', '2009-07-26 00:00:00.000', 0, '6300', 'OBAL047', '2008-08-10 00:00:00.000', '2008-03-10 00:00:00.000', 'Efectivo', 7, 3, 3, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-02-08 00:00:00.000', '2009-07-08 00:00:00.000', 0, '6300', 'OBAL048', '2008-08-28 00:00:00.000', '2008-03-28 00:00:00.000', 'Efectivo', 8, 3, 3, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-02-22 00:00:00.000', '2009-07-22 00:00:00.000', 0, '6400', 'OBAL049', '2010-06-01 00:00:00.000', '2010-01-01 00:00:00.000', 'Efectivo', 9, 3, 3, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-01-06 00:00:00.000', '2008-06-06 00:00:00.000', 0, '5800', 'OBAL050', '2009-05-08 00:00:00.000', '2008-12-08 00:00:00.000', 'Efectivo', 10, 4, 3, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-01-07 00:00:00.000', '2008-06-07 00:00:00.000', 0, '6700', 'OBAL051', '2009-05-07 00:00:00.000', '2008-12-07 00:00:00.000', 'Efectivo', 11, 4, 3, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-02-02 00:00:00.000', '2008-07-02 00:00:00.000', 0, '6500', 'OBAL052', '2009-05-14 00:00:00.000', '2008-12-14 00:00:00.000', 'Efectivo', 12, 5, 3, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-02-20 00:00:00.000', '2008-07-20 00:00:00.000', 0, '6600', 'OBAL053', '2009-05-17 00:00:00.000', '2008-12-17 00:00:00.000', 'Efectivo', 13, 5, 3, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-03-10 00:00:00.000', '2008-08-10 00:00:00.000', 0, '6500', 'OBAL054', '2009-06-01 00:00:00.000', '2009-01-01 00:00:00.000', 'Efectivo', 14, 6, 3, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-03-28 00:00:00.000', '2008-08-28 00:00:00.000', 0, '6800', 'OBAL055', '2009-05-25 00:00:00.000', '2008-12-25 00:00:00.000', 'Efectivo', 15, 7, 3, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2010-01-01 00:00:00.000', '2010-06-01 00:00:00.000', 0, '6800', 'OBAL056', '2009-06-13 00:00:00.000', '2009-01-13 00:00:00.000', 'Efectivo', 1, 1, 4, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-02-08 00:00:00.000', '2008-07-08 00:00:00.000', 0, '6600', 'OBAL057', '2009-06-20 00:00:00.000', '2009-01-20 00:00:00.000', 'Efectivo', 2, 1, 4, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-02-05 00:00:00.000', '2009-07-05 00:00:00.000', 0, '6900', 'OBAL058', '2009-06-30 00:00:00.000', '2009-01-31 00:00:00.000', 'Efectivo', 3, 2, 4, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-02-23 00:00:00.000', '2009-07-23 00:00:00.000', 0, '6900', 'OBAL059', '2009-07-18 00:00:00.000', '2009-02-18 00:00:00.000', 'Efectivo', 4, 2, 4, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-12-05 00:00:00.000', '2009-05-05 00:00:00.000', 0, '6400', 'OBAL060', '2009-07-13 00:00:00.000', '2009-02-13 00:00:00.000', 'Efectivo', 5, 2, 4, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-12-24 00:00:00.000', '2009-05-24 00:00:00.000', 0, '6700', 'OBAL061', '2009-07-25 00:00:00.000', '2009-02-25 00:00:00.000', 'Efectivo', 6, 3, 4, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-01-11 00:00:00.000', '2009-06-11 00:00:00.000', 0, '6400', 'OBAL062', '2009-08-04 00:00:00.000', '2009-03-04 00:00:00.000', 'Efectivo', 7, 4, 4, 5);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-01-18 00:00:00.000', '2009-06-18 00:00:00.000', 0, '6600', 'OBAL063', '2009-06-02 00:00:00.000', '2009-01-02 00:00:00.000', 'Efectivo', 8, 4, 4, 5);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-03-17 00:00:00.000', '2008-08-17 00:00:00.000', 0, '6700', 'OBAL064', '2009-06-20 00:00:00.000', '2009-01-20 00:00:00.000', 'Efectivo', 9, 5, 4, 5);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2010-01-29 00:00:00.000', '2010-06-29 00:00:00.000', 0, '6800', 'OBAL065', '2009-07-26 00:00:00.000', '2009-02-26 00:00:00.000', 'Efectivo', 10, 5, 4, 5);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2010-02-23 00:00:00.000', '2010-07-23 00:00:00.000', 0, '4000', 'OBAL066', '2009-06-14 00:00:00.000', '2009-01-14 00:00:00.000', 'Efectivo', 11, 6, 4, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2010-02-23 00:00:00.000', '2010-07-23 00:00:00.000', 0, '2400', 'OBAL067', '2009-05-04 00:00:00.000', '2008-12-04 00:00:00.000', 'Efectivo', 12, 6, 4, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-12-22 00:00:00.000', '2010-05-22 00:00:00.000', 0, '2200', 'OBAL068', '2010-05-11 00:00:00.000', '2009-12-11 00:00:00.000', 'Efectivo', 13, 7, 4, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-03-05 00:00:00.000', '2009-08-05 00:00:00.000', 0, '2400', 'OBAL069', '2009-07-23 00:00:00.000', '2009-02-23 00:00:00.000', 'Efectivo', 14, 7, 4, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-12-03 00:00:00.000', '2010-05-03 00:00:00.000', 0, '2300', 'OBAL070', '2009-07-04 00:00:00.000', '2009-02-04 00:00:00.000', 'Efectivo', 15, 8, 4, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-02-15 00:00:00.000', '2009-07-15 00:00:00.000', 0, '2000', 'OBAL071', '2010-06-06 00:00:00.000', '2010-01-06 00:00:00.000', 'Efectivo', 1, 1, 5, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-12-15 00:00:00.000', '2009-05-15 00:00:00.000', 0, '2200', 'OBAL072', '2010-06-22 00:00:00.000', '2010-01-22 00:00:00.000', 'Efectivo', 2, 1, 5, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-02-15 00:00:00.000', '2009-07-15 00:00:00.000', 0, '2000', 'OBAL073', '2010-06-24 00:00:00.000', '2010-01-24 00:00:00.000', 'Efectivo', 3, 1, 5, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-12-01 00:00:00.000', '2009-05-01 00:00:00.000', 0, '2100', 'OBAL074', '2010-08-04 00:00:00.000', '2010-03-04 00:00:00.000', 'Efectivo', 4, 2, 5, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-12-19 00:00:00.000', '2009-05-19 00:00:00.000', 0, '2100', 'OBAL075', '2010-07-13 00:00:00.000', '2010-02-13 00:00:00.000', 'Efectivo', 5, 2, 5, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-01-07 00:00:00.000', '2009-06-07 00:00:00.000', 0, '2300', 'OBAL076', '2009-06-17 00:00:00.000', '2009-01-17 00:00:00.000', 'Efectivo', 6, 2, 5, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-01-26 00:00:00.000', '2009-06-26 00:00:00.000', 0, '5700', 'OBAL077', '2009-06-21 00:00:00.000', '2009-01-21 00:00:00.000', 'Efectivo', 7, 3, 5, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-02-12 00:00:00.000', '2009-07-12 00:00:00.000', 0, '5700', 'OBAL078', '2009-05-15 00:00:00.000', '2008-12-15 00:00:00.000', 'Efectivo', 8, 4, 5, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-03-03 00:00:00.000', '2009-08-03 00:00:00.000', 0, '5700', 'OBAL079', '2009-06-03 00:00:00.000', '2009-01-03 00:00:00.000', 'Efectivo', 9, 5, 5, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-12-15 00:00:00.000', '2009-05-15 00:00:00.000', 0, '5800', 'OBAL080', '2009-07-08 00:00:00.000', '2009-02-08 00:00:00.000', 'Efectivo', 10, 6, 5, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2010-01-24 00:00:00.000', '2010-06-24 00:00:00.000', 0, '5600', 'OBAL081', '2009-08-06 00:00:00.000', '2009-03-06 00:00:00.000', 'Efectivo', 11, 6, 5, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2010-01-17 00:00:00.000', '2010-06-17 00:00:00.000', 0, '5800', 'OBAL082', '2009-06-22 00:00:00.000', '2009-01-22 00:00:00.000', 'Efectivo', 12, 6, 5, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-12-29 00:00:00.000', '2010-05-29 00:00:00.000', 0, '5400', 'OBAL083', '2009-07-21 00:00:00.000', '2009-02-21 00:00:00.000', 'Efectivo', 13, 7, 5, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2010-03-03 00:00:00.000', '2010-08-03 00:00:00.000', 0, '3200', 'OBAL084', '2009-05-02 00:00:00.000', '2008-12-02 00:00:00.000', 'Efectivo', 14, 7, 5, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2010-02-12 00:00:00.000', '2010-07-12 00:00:00.000', 0, '3700', 'OBAL085', '2009-05-07 00:00:00.000', '2008-12-07 00:00:00.000', 'Efectivo', 15, 8, 5, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2010-02-05 00:00:00.000', '2010-07-05 00:00:00.000', 0, '3500', 'OBAL086', '2009-05-14 00:00:00.000', '2008-12-14 00:00:00.000', 'Efectivo', 1, 1, 6, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-12-11 00:00:00.000', '2010-05-11 00:00:00.000', 0, '3300', 'OBAL087', '2009-05-21 00:00:00.000', '2008-12-21 00:00:00.000', 'Efectivo', 2, 1, 6, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-01-05 00:00:00.000', '2009-06-05 00:00:00.000', 0, '3600', 'OBAL088', '2009-06-02 00:00:00.000', '2009-01-02 00:00:00.000', 'Efectivo', 3, 1, 6, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-12-22 00:00:00.000', '2009-05-22 00:00:00.000', 0, '3100', 'OBAL089', '2009-06-16 00:00:00.000', '2009-01-16 00:00:00.000', 'Efectivo', 4, 2, 6, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-12-18 00:00:00.000', '2010-05-18 00:00:00.000', 0, '3600', 'OBAL090', '2009-06-21 00:00:00.000', '2009-01-21 00:00:00.000', 'Efectivo', 5, 2, 6, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2010-02-01 00:00:00.000', '2010-07-01 00:00:00.000', 0, '3400', 'OBAL091', '2009-06-27 00:00:00.000', '2009-01-27 00:00:00.000', 'Efectivo', 6, 2, 6, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2010-02-20 00:00:00.000', '2010-07-20 00:00:00.000', 0, '3100', 'OBAL092', '2009-07-02 00:00:00.000', '2009-02-02 00:00:00.000', 'Efectivo', 7, 3, 6, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2010-01-12 00:00:00.000', '2010-06-12 00:00:00.000', 0, '3400', 'OBAL093', '2009-07-14 00:00:00.000', '2009-02-14 00:00:00.000', 'Efectivo', 8, 3, 6, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2010-03-10 00:00:00.000', '2010-08-10 00:00:00.000', 0, '3200', 'OBAL094', '2009-07-21 00:00:00.000', '2009-02-21 00:00:00.000', 'Efectivo', 9, 3, 6, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-12-27 00:00:00.000', '2009-05-27 00:00:00.000', 0, '3300', 'OBAL095', '2009-08-03 00:00:00.000', '2009-03-03 00:00:00.000', 'Efectivo', 10, 4, 6, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-12-12 00:00:00.000', '2009-05-12 00:00:00.000', 0, '3500', 'OBAL096', '2009-08-05 00:00:00.000', '2009-03-05 00:00:00.000', 'Efectivo', 11, 4, 6, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2008-12-19 00:00:00.000', '2009-05-19 00:00:00.000', 0, '5500', 'OBAL097', '2009-08-05 00:00:00.000', '2009-03-05 00:00:00.000', 'Efectivo', 12, 4, 6, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-03-02 00:00:00.000', '2009-08-02 00:00:00.000', 0, '4600', 'OBAL098', '2009-05-06 00:00:00.000', '2008-12-06 00:00:00.000', 'Efectivo', 13, 5, 6, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-02-10 00:00:00.000', '2009-07-10 00:00:00.000', 0, '4300', 'OBAL099', '2009-05-12 00:00:00.000', '2008-12-12 00:00:00.000', 'Efectivo', 14, 5, 6, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ('2009-02-11 00:00:00.000', '2009-07-11 00:00:00.000', 0, '4900', 'OBAL100', '2009-05-17 00:00:00.000', '2008-12-17 00:00:00.000', 'Efectivo', 15, 5, 6, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-06 00:00:00.000', '2009-06-06 00:00:00.000', 0, '4600', 'OBAL101', '2009-05-24 00:00:00.000', '2008-12-24 00:00:00.000', 'Efectivo', 1, 1, 7, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-12 00:00:00.000', '2009-06-12 00:00:00.000', 0, '4400', 'OBAL102', '2009-05-31 00:00:00.000', '2008-12-31 00:00:00.000', 'Efectivo', 2, 1, 7, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-25 00:00:00.000', '2009-06-25 00:00:00.000', 0, '4400', 'OBAL103', '2009-06-04 00:00:00.000', '2009-01-04 00:00:00.000', 'Efectivo', 3, 2, 7, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-03 00:00:00.000', '2009-05-03 00:00:00.000', 0, '4700', 'OBAL104', '2009-06-12 00:00:00.000', '2009-01-12 00:00:00.000', 'Efectivo', 4, 2, 7, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-12-06 00:00:00.000', '2010-05-06 00:00:00.000', 0, '4800', 'OBAL105', '2009-06-17 00:00:00.000', '2009-01-17 00:00:00.000', 'Efectivo', 5, 2, 7, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-12-25 00:00:00.000', '2010-05-25 00:00:00.000', 0, '4700', 'OBAL106', '2009-06-29 00:00:00.000', '2009-01-29 00:00:00.000', 'Efectivo', 6, 3, 7, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-12-25 00:00:00.000', '2010-05-25 00:00:00.000', 0, '4500', 'OBAL107', '2009-07-05 00:00:00.000', '2009-02-05 00:00:00.000', 'Efectivo', 7, 3, 7, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2010-02-27 00:00:00.000', '2010-07-27 00:00:00.000', 0, '4500', 'OBAL108', '2009-07-24 00:00:00.000', '2009-02-24 00:00:00.000', 'Efectivo', 8, 4, 7, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2010-02-08 00:00:00.000', '2010-07-08 00:00:00.000', 0, '4800', 'OBAL109', '2009-08-08 00:00:00.000', '2009-03-08 00:00:00.000', 'Efectivo', 9, 5, 7, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-08 00:00:00.000', '2009-05-08 00:00:00.000', 0, '6000', 'OBAL110', '2009-07-28 00:00:00.000', '2009-02-28 00:00:00.000', 'Efectivo', 10, 6, 7, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-07 00:00:00.000', '2009-05-07 00:00:00.000', 0, '6000', 'OBAL111', '2009-05-09 00:00:00.000', '2008-12-09 00:00:00.000', 'Efectivo', 11, 7, 7, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-14 00:00:00.000', '2009-05-14 00:00:00.000', 0, '6100', 'OBAL112', '2009-06-15 00:00:00.000', '2009-01-15 00:00:00.000', 'Efectivo', 12, 7, 7, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-17 00:00:00.000', '2009-05-17 00:00:00.000', 0, '6100', 'OBAL113', '2009-05-28 00:00:00.000', '2008-12-28 00:00:00.000', 'Efectivo', 13, 8, 7, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-01 00:00:00.000', '2009-06-01 00:00:00.000', 0, '5800', 'OBAL114', '2009-06-04 00:00:00.000', '2009-01-04 00:00:00.000', 'Efectivo', 14, 1, 7, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-25 00:00:00.000', '2009-05-25 00:00:00.000', 0, '5900', 'OBAL115', '2009-06-22 00:00:00.000', '2009-01-22 00:00:00.000', 'Efectivo', 15, 1, 7, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-13 00:00:00.000', '2009-06-13 00:00:00.000', 0, '5900', 'OBAL116', '2009-07-09 00:00:00.000', '2009-02-09 00:00:00.000', 'Efectivo', 1, 1, 8, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-20 00:00:00.000', '2009-06-20 00:00:00.000', 0, '4200', 'OBAL117', '2009-05-12 00:00:00.000', '2008-12-12 00:00:00.000', 'Efectivo', 2, 1, 8, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-31 00:00:00.000', '2009-06-30 00:00:00.000', 0, '4300', 'OBAL118', '2009-06-26 00:00:00.000', '2009-01-26 00:00:00.000', 'Deposito Bancario', 3, 2, 8, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-18 00:00:00.000', '2009-07-18 00:00:00.000', 0, '4200', 'OBAL119', '2009-06-07 00:00:00.000', '2009-01-07 00:00:00.000', 'Deposito Bancario', 4, 2, 8, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-13 00:00:00.000', '2009-07-13 00:00:00.000', 0, '4200', 'OBAL120', '2012-02-01 00:00:00.000', '2011-09-01 00:00:00.000', 'Deposito Bancario', 5, 2, 8, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-25 00:00:00.000', '2009-07-25 00:00:00.000', 0, '6300', 'OBAL121', '2010-05-02 00:00:00.000', '2009-12-02 00:00:00.000', 'Deposito Bancario', 6, 2, 8, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-03-04 00:00:00.000', '2009-08-04 00:00:00.000', 0, '6600', 'OBAL122', '2009-05-14 00:00:00.000', '2008-12-14 00:00:00.000', 'Deposito Bancario', 7, 3, 8, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-02 00:00:00.000', '2009-06-02 00:00:00.000', 0, '6300', 'OBAL123', '2010-05-21 00:00:00.000', '2009-12-21 00:00:00.000', 'Deposito Bancario', 8, 3, 8, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-07 00:00:00.000', '2009-05-07 00:00:00.000', 0, '2000', 'OBAL124', '2009-06-30 00:00:00.000', '2009-01-31 00:00:00.000', 'Deposito Bancario', 9, 3, 8, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-07 00:00:00.000', '2009-05-07 00:00:00.000', 0, '2000', 'OBAL125', '2014-04-14 00:00:00.000', '2013-11-14 00:00:00.000', 'Deposito Bancario', 10, 4, 8, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-26 00:00:00.000', '2009-05-26 00:00:00.000', 0, '4700', 'OBAL126', '2009-05-06 00:00:00.000', '2008-12-06 00:00:00.000', 'Deposito Bancario', 11, 4, 8, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-20 00:00:00.000', '2009-06-20 00:00:00.000', 0, '4600', 'OBAL127', '2009-07-25 00:00:00.000', '2009-02-25 00:00:00.000', 'Deposito Bancario', 12, 4, 8, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-26 00:00:00.000', '2009-07-26 00:00:00.000', 0, '4600', 'OBAL128', '2009-07-06 00:00:00.000', '2009-02-06 00:00:00.000', 'Deposito Bancario', 13, 7, 8, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-03 00:00:00.000', '2009-06-03 00:00:00.000', 0, '4500', 'OBAL129', '2009-06-01 00:00:00.000', '2009-01-01 00:00:00.000', 'Deposito Bancario', 14, 7, 8, 1);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-04 00:00:00.000', '2009-05-04 00:00:00.000', 0, '4500', 'OBAL130', '2009-05-25 00:00:00.000', '2008-12-25 00:00:00.000', 'Deposito Bancario', 15, 7, 8, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-22 00:00:00.000', '2009-05-22 00:00:00.000', 0, '4400', 'OBAL131', '2009-05-13 00:00:00.000', '2008-12-13 00:00:00.000', 'Efectivo', 1, 1, 9, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-13 00:00:00.000', '2009-07-13 00:00:00.000', 0, '4800', 'OBAL132', '2009-06-30 00:00:00.000', '2009-01-30 00:00:00.000', 'Efectivo', 2, 1, 9, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-15 00:00:00.000', '2009-07-15 00:00:00.000', 0, '5000', 'OBAL133', '2009-05-18 00:00:00.000', '2008-12-18 00:00:00.000', 'Efectivo', 3, 2, 9, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-22 00:00:00.000', '2009-07-22 00:00:00.000', 0, '5000', 'OBAL134', '2009-06-06 00:00:00.000', '2009-01-06 00:00:00.000', 'Efectivo', 4, 2, 9, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-10 00:00:00.000', '2009-06-10 00:00:00.000', 0, '5100', 'OBAL135', '2009-06-24 00:00:00.000', '2009-01-24 00:00:00.000', 'Efectivo', 5, 2, 9, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-14 00:00:00.000', '2009-06-14 00:00:00.000', 0, '4900', 'OBAL136', '2009-07-18 00:00:00.000', '2009-02-18 00:00:00.000', 'Efectivo', 6, 3, 9, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-04 00:00:00.000', '2009-05-04 00:00:00.000', 0, '5100', 'OBAL137', '2009-07-11 00:00:00.000', '2009-02-11 00:00:00.000', 'Efectivo', 7, 3, 9, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-12-11 00:00:00.000', '2010-05-11 00:00:00.000', 0, '5200', 'OBAL138', '2009-08-01 00:00:00.000', '2009-03-01 00:00:00.000', 'Efectivo', 8, 3, 9, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-23 00:00:00.000', '2009-07-23 00:00:00.000', 0, '4900', 'OBAL139', '2009-08-08 00:00:00.000', '2009-03-08 00:00:00.000', 'Deposito Bancario', 9, 4, 9, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-04 00:00:00.000', '2009-07-04 00:00:00.000', 0, '4700', 'OBAL140', '2009-05-25 00:00:00.000', '2008-12-25 00:00:00.000', 'Deposito Bancario', 10, 4, 9, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2010-01-06 00:00:00.000', '2010-06-06 00:00:00.000', 0, '4400', 'OBAL141', '2011-07-25 00:00:00.000', '2011-02-25 00:00:00.000', 'Deposito Bancario', 11, 4, 9, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2010-01-22 00:00:00.000', '2010-06-22 00:00:00.000', 0, '4400', 'OBAL142', '2011-12-31 00:00:00.000', '2011-07-31 00:00:00.000', 'Deposito Bancario', 12, 5, 9, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2010-01-24 00:00:00.000', '2010-06-24 00:00:00.000', 0, '4400', 'OBAL143', '2012-12-15 00:00:00.000', '2012-07-15 00:00:00.000', 'Deposito Bancario', 13, 5, 9, 2);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2010-03-04 00:00:00.000', '2010-08-04 00:00:00.000', 0, '4900', 'OBAL144', '2009-07-10 00:00:00.000', '2009-02-10 00:00:00.000', 'Deposito Bancario', 14, 7, 9, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2010-02-13 00:00:00.000', '2010-07-13 00:00:00.000', 0, '5000', 'OBAL145', '2009-07-28 00:00:00.000', '2009-02-28 00:00:00.000', 'Deposito Bancario', 15, 8, 9, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-17 00:00:00.000', '2009-06-17 00:00:00.000', 0, '4800', 'OBAL146', '2010-05-17 00:00:00.000', '2009-12-17 00:00:00.000', 'Deposito Bancario', 1, 1, 10, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-27 00:00:00.000', '2009-06-27 00:00:00.000', 0, '4800', 'OBAL147', '2010-06-04 00:00:00.000', '2010-01-04 00:00:00.000', 'Deposito Bancario', 2, 1, 10, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-07 00:00:00.000', '2009-05-07 00:00:00.000', 0, '4600', 'OBAL148', '2010-06-11 00:00:00.000', '2010-01-11 00:00:00.000', 'Deposito Bancario', 3, 1, 10, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-26 00:00:00.000', '2009-05-26 00:00:00.000', 0, '4900', 'OBAL149', '2010-06-23 00:00:00.000', '2010-01-23 00:00:00.000', 'Deposito Bancario', 4, 2, 10, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-14 00:00:00.000', '2009-06-14 00:00:00.000', 0, '4700', 'OBAL150', '2010-06-27 00:00:00.000', '2010-01-27 00:00:00.000', 'Deposito Bancario', 5, 2, 10, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-31 00:00:00.000', '2009-06-30 00:00:00.000', 0, '4600', 'OBAL151', '2010-06-30 00:00:00.000', '2010-01-31 00:00:00.000', 'Deposito Bancario', 6, 2, 10, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-26 00:00:00.000', '2009-07-26 00:00:00.000', 0, '4700', 'OBAL152', '2010-08-09 00:00:00.000', '2010-03-09 00:00:00.000', 'Efectivo', 7, 3, 10, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-19 00:00:00.000', '2009-07-19 00:00:00.000', 0, '4500', 'OBAL153', '2011-05-06 00:00:00.000', '2010-12-06 00:00:00.000', 'Efectivo', 8, 3, 10, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-01 00:00:00.000', '2009-07-01 00:00:00.000', 0, '4500', 'OBAL154', '2011-05-25 00:00:00.000', '2010-12-25 00:00:00.000', 'Efectivo', 9, 4, 10, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-16 00:00:00.000', '2009-05-16 00:00:00.000', 0, '4800', 'OBAL155', '2009-06-12 00:00:00.000', '2009-01-12 00:00:00.000', 'Efectivo', 10, 4, 10, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-23 00:00:00.000', '2009-05-23 00:00:00.000', 0, '5200', 'OBAL156', '2009-05-11 00:00:00.000', '2008-12-11 00:00:00.000', 'Efectivo', 11, 5, 10, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-04 00:00:00.000', '2009-06-04 00:00:00.000', 0, '5400', 'OBAL157', '2009-07-04 00:00:00.000', '2009-02-04 00:00:00.000', 'Efectivo', 12, 6, 10, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-11 00:00:00.000', '2009-06-11 00:00:00.000', 0, '5400', 'OBAL158', '2009-07-23 00:00:00.000', '2009-02-23 00:00:00.000', 'Efectivo', 13, 7, 10, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-03 00:00:00.000', '2009-07-03 00:00:00.000', 0, '5700', 'OBAL159', '2009-07-16 00:00:00.000', '2009-02-16 00:00:00.000', 'Efectivo', 14, 7, 10, 3);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-03-07 00:00:00.000', '2009-08-07 00:00:00.000', 0, '5600', 'OBAL160', '2009-07-03 00:00:00.000', '2009-02-03 00:00:00.000', 'Efectivo', 15, 8, 10, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-16 00:00:00.000', '2009-07-16 00:00:00.000', 0, '5600', 'OBAL161', '2009-06-11 00:00:00.000', '2009-01-11 00:00:00.000', 'Efectivo', 1, 1, 11, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-21 00:00:00.000', '2009-06-21 00:00:00.000', 0, '5300', 'OBAL162', '2009-06-17 00:00:00.000', '2009-01-17 00:00:00.000', 'Efectivo', 2, 1, 11, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-15 00:00:00.000', '2009-05-15 00:00:00.000', 0, '5300', 'OBAL163', '2009-06-22 00:00:00.000', '2009-01-22 00:00:00.000', 'Efectivo', 3, 1, 11, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-03 00:00:00.000', '2009-06-03 00:00:00.000', 0, '5500', 'OBAL164', '2009-05-23 00:00:00.000', '2008-12-23 00:00:00.000', 'Efectivo', 4, 2, 11, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-08 00:00:00.000', '2009-07-08 00:00:00.000', 0, '2500', 'OBAL165', '2011-07-15 00:00:00.000', '2011-02-15 00:00:00.000', 'Efectivo', 5, 3, 11, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-03-06 00:00:00.000', '2009-08-06 00:00:00.000', 0, '2700', 'OBAL166', '2011-06-04 00:00:00.000', '2011-01-04 00:00:00.000', 'Efectivo', 6, 4, 11, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-22 00:00:00.000', '2009-06-22 00:00:00.000', 0, '3900', 'OBAL167', '2011-10-31 00:00:00.000', '2011-05-31 00:00:00.000', 'Efectivo', 7, 6, 11, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-21 00:00:00.000', '2009-07-21 00:00:00.000', 0, '3300', 'OBAL168', '2011-10-31 00:00:00.000', '2011-05-31 00:00:00.000', 'Efectivo', 8, 6, 11, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-02 00:00:00.000', '2009-05-02 00:00:00.000', 0, '3200', 'OBAL169', '2011-10-31 00:00:00.000', '2011-05-31 00:00:00.000', 'Efectivo', 9, 6, 11, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-07 00:00:00.000', '2009-05-07 00:00:00.000', 0, '3600', 'OBAL170', '2011-10-31 00:00:00.000', '2011-05-31 00:00:00.000', 'Efectivo', 10, 7, 11, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-14 00:00:00.000', '2009-05-14 00:00:00.000', 0, '3400', 'OBAL171', '2011-10-31 00:00:00.000', '2011-05-31 00:00:00.000', 'Efectivo', 11, 7, 11, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-21 00:00:00.000', '2009-05-21 00:00:00.000', 0, '3100', 'OBAL172', '2011-10-31 00:00:00.000', '2011-05-31 00:00:00.000', 'Efectivo', 12, 7, 11, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-02 00:00:00.000', '2009-06-02 00:00:00.000', 0, '3300', 'OBAL173', '2011-10-31 00:00:00.000', '2011-05-31 00:00:00.000', 'Efectivo', 13, 7, 11, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-16 00:00:00.000', '2009-06-16 00:00:00.000', 0, '3500', 'OBAL174', '2011-10-31 00:00:00.000', '2011-05-31 00:00:00.000', 'Efectivo', 14, 7, 11, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-21 00:00:00.000', '2009-06-21 00:00:00.000', 0, '3100', 'OBAL175', '2011-10-31 00:00:00.000', '2011-05-31 00:00:00.000', 'Efectivo', 15, 8, 11, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-27 00:00:00.000', '2009-06-27 00:00:00.000', 0, '3900', 'OBAL176', '2013-02-28 00:00:00.000', '2012-09-30 00:00:00.000', 'Efectivo', 1, 1, 12, 4);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-02 00:00:00.000', '2009-07-02 00:00:00.000', 0, '3000', 'OBAL177', '2013-08-14 00:00:00.000', '2013-03-14 00:00:00.000', 'Efectivo', 2, 1, 12, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-14 00:00:00.000', '2009-07-14 00:00:00.000', 0, '3800', 'OBAL178', '2013-10-30 00:00:00.000', '2013-05-30 00:00:00.000', 'Efectivo', 3, 1, 12, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-21 00:00:00.000', '2009-07-21 00:00:00.000', 0, '3000', 'OBAL179', '2012-09-16 00:00:00.000', '2012-04-16 00:00:00.000', 'Efectivo', 4, 2, 12, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-03-03 00:00:00.000', '2009-08-03 00:00:00.000', 0, '3700', 'OBAL180', '2013-10-30 00:00:00.000', '2013-05-30 00:00:00.000', 'Efectivo', 5, 2, 12, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-03-05 00:00:00.000', '2009-08-05 00:00:00.000', 0, '3800', 'OBAL181', '2012-10-30 00:00:00.000', '2012-05-30 00:00:00.000', 'Efectivo', 6, 3, 12, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-20 00:00:00.000', '2009-07-20 00:00:00.000', 0, '3700', 'OBAL182', '2012-10-30 00:00:00.000', '2012-05-30 00:00:00.000', 'Deposito Bancario', 7, 3, 12, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-09 00:00:00.000', '2009-05-09 00:00:00.000', 0, '6000', 'OBAL183', '2008-08-17 00:00:00.000', '2008-03-17 00:00:00.000', 'Deposito Bancario', 8, 4, 12, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-28 00:00:00.000', '2009-05-28 00:00:00.000', 0, '3500', 'OBAL184', '2010-06-29 00:00:00.000', '2010-01-29 00:00:00.000', 'Deposito Bancario', 9, 4, 12, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-22 00:00:00.000', '2009-06-22 00:00:00.000', 0, '3300', 'OBAL185', '2010-07-23 00:00:00.000', '2010-02-23 00:00:00.000', 'Deposito Bancario', 10, 5, 12, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-09 00:00:00.000', '2009-07-09 00:00:00.000', 0, '3400', 'OBAL186', '2010-07-23 00:00:00.000', '2010-02-23 00:00:00.000', 'Deposito Bancario', 11, 5, 12, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-28 00:00:00.000', '2009-07-28 00:00:00.000', 0, '3400', 'OBAL187', '2010-05-22 00:00:00.000', '2009-12-22 00:00:00.000', 'Deposito Bancario', 12, 6, 12, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-08 00:00:00.000', '2009-07-08 00:00:00.000', 0, '3600', 'OBAL188', '2009-08-05 00:00:00.000', '2009-03-05 00:00:00.000', 'Deposito Bancario', 13, 6, 12, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-09 00:00:00.000', '2009-05-09 00:00:00.000', 0, '3300', 'OBAL189', '2010-05-03 00:00:00.000', '2009-12-03 00:00:00.000', 'Deposito Bancario', 14, 7, 12, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-27 00:00:00.000', '2009-05-27 00:00:00.000', 0, '3500', 'OBAL190', '2009-07-15 00:00:00.000', '2009-02-15 00:00:00.000', 'Deposito Bancario', 15, 8, 12, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-15 00:00:00.000', '2009-06-15 00:00:00.000', 0, '3600', 'OBAL191', '2009-05-15 00:00:00.000', '2008-12-15 00:00:00.000', 'Deposito Bancario', 1, 1, 13, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-02 00:00:00.000', '2009-07-02 00:00:00.000', 0, '5600', 'OBAL192', '2009-05-15 00:00:00.000', '2008-12-15 00:00:00.000', 'Deposito Bancario', 2, 1, 13, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-26 00:00:00.000', '2009-07-26 00:00:00.000', 0, '5000', 'OBAL193', '2010-06-24 00:00:00.000', '2010-01-24 00:00:00.000', 'Deposito Bancario', 3, 1, 13, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-03-05 00:00:00.000', '2009-08-05 00:00:00.000', 0, '5200', 'OBAL194', '2010-06-17 00:00:00.000', '2010-01-17 00:00:00.000', 'Deposito Bancario', 4, 2, 13, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-06 00:00:00.000', '2009-05-06 00:00:00.000', 0, '5200', 'OBAL195', '2010-05-29 00:00:00.000', '2009-12-29 00:00:00.000', 'Deposito Bancario', 5, 3, 13, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-12 00:00:00.000', '2009-05-12 00:00:00.000', 0, '5100', 'OBAL196', '2010-08-03 00:00:00.000', '2010-03-03 00:00:00.000', 'Deposito Bancario', 6, 4, 13, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-17 00:00:00.000', '2009-05-17 00:00:00.000', 0, '5000', 'OBAL197', '2010-07-12 00:00:00.000', '2010-02-12 00:00:00.000', 'Deposito Bancario', 7, 4, 13, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-24 00:00:00.000', '2009-05-24 00:00:00.000', 0, '5300', 'OBAL198', '2010-07-05 00:00:00.000', '2010-02-05 00:00:00.000', 'Deposito Bancario', 8, 5, 13, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-31 00:00:00.000', '2009-05-31 00:00:00.000', 0, '5100', 'OBAL199', '2010-05-11 00:00:00.000', '2009-12-11 00:00:00.000', 'Deposito Bancario', 9, 6, 13, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-04 00:00:00.000', '2009-06-04 00:00:00.000', 0, '4900', 'OBAL200', '2009-06-05 00:00:00.000', '2009-01-05 00:00:00.000', 'Deposito Bancario', 10, 6, 13, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-12 00:00:00.000', '2009-06-12 00:00:00.000', 0, '5900', 'OBAL201', '2009-05-27 00:00:00.000', '2008-12-27 00:00:00.000', 'Deposito Bancario', 11, 6, 13, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-17 00:00:00.000', '2009-06-17 00:00:00.000', 0, '2300', 'OBAL202', '2009-05-12 00:00:00.000', '2008-12-12 00:00:00.000', 'Deposito Bancario', 12, 7, 13, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-29 00:00:00.000', '2009-06-29 00:00:00.000', 0, '2000', 'OBAL203', '2009-05-19 00:00:00.000', '2008-12-19 00:00:00.000', 'Deposito Bancario', 13, 7, 13, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-05 00:00:00.000', '2009-07-05 00:00:00.000', 0, '2200', 'OBAL204', '2009-08-02 00:00:00.000', '2009-03-02 00:00:00.000', 'Deposito Bancario', 14, 7, 13, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-24 00:00:00.000', '2009-07-24 00:00:00.000', 0, '2000', 'OBAL205', '2009-07-10 00:00:00.000', '2009-02-10 00:00:00.000', 'Deposito Bancario', 15, 8, 13, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-03-08 00:00:00.000', '2009-08-08 00:00:00.000', 0, '2200', 'OBAL206', '2009-07-11 00:00:00.000', '2009-02-11 00:00:00.000', 'Deposito Bancario', 1, 1, 14, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-26 00:00:00.000', '2009-07-26 00:00:00.000', 0, '2100', 'OBAL207', '2009-06-06 00:00:00.000', '2009-01-06 00:00:00.000', 'Deposito Bancario', 2, 1, 14, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-02 00:00:00.000', '2009-05-02 00:00:00.000', 0, '2300', 'OBAL208', '2009-06-12 00:00:00.000', '2009-01-12 00:00:00.000', 'Deposito Bancario', 3, 1, 14, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-02 00:00:00.000', '2009-05-02 00:00:00.000', 0, '2100', 'OBAL209', '2009-06-25 00:00:00.000', '2009-01-25 00:00:00.000', 'Deposito Bancario', 4, 2, 14, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-08 00:00:00.000', '2009-06-08 00:00:00.000', 0, '5300', 'OBAL210', '2009-05-03 00:00:00.000', '2008-12-03 00:00:00.000', 'Deposito Bancario', 5, 2, 14, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-27 00:00:00.000', '2009-06-27 00:00:00.000', 0, '6600', 'OBAL211', '2010-05-06 00:00:00.000', '2009-12-06 00:00:00.000', 'Deposito Bancario', 6, 3, 14, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-20 00:00:00.000', '2009-07-20 00:00:00.000', 0, '6700', 'OBAL212', '2010-05-25 00:00:00.000', '2009-12-25 00:00:00.000', 'Deposito Bancario', 7, 3, 14, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-28 00:00:00.000', '2009-07-28 00:00:00.000', 0, '6500', 'OBAL213', '2010-05-25 00:00:00.000', '2009-12-25 00:00:00.000', 'Deposito Bancario', 8, 4, 14, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-09 00:00:00.000', '2009-05-09 00:00:00.000', 0, '6600', 'OBAL214', '2010-07-27 00:00:00.000', '2010-02-27 00:00:00.000', 'Deposito Bancario', 9, 5, 14, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2010-02-23 00:00:00.000', '2010-07-23 00:00:00.000', 0, '6500', 'OBAL215', '2010-07-08 00:00:00.000', '2010-02-08 00:00:00.000', 'Deposito Bancario', 10, 5, 14, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-02 00:00:00.000', '2009-07-02 00:00:00.000', 0, '6800', 'OBAL216', '2009-05-07 00:00:00.000', '2008-12-07 00:00:00.000', 'Deposito Bancario', 11, 6, 14, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-15 00:00:00.000', '2009-06-15 00:00:00.000', 0, '6700', 'OBAL217', '2009-05-07 00:00:00.000', '2008-12-07 00:00:00.000', 'Deposito Bancario', 12, 6, 14, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-28 00:00:00.000', '2009-05-28 00:00:00.000', 0, '5400', 'OBAL218', '2009-06-27 00:00:00.000', '2009-01-27 00:00:00.000', 'Deposito Bancario', 13, 7, 14, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-04 00:00:00.000', '2009-06-04 00:00:00.000', 0, '3800', 'OBAL219', '2009-05-07 00:00:00.000', '2008-12-07 00:00:00.000', 'Deposito Bancario', 14, 7, 14, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-16 00:00:00.000', '2009-05-16 00:00:00.000', 0, '3800', 'OBAL220', '2009-05-26 00:00:00.000', '2008-12-26 00:00:00.000', 'Deposito Bancario', 15, 8, 14, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-22 00:00:00.000', '2009-06-22 00:00:00.000', 0, '3900', 'OBAL221', '2009-06-14 00:00:00.000', '2009-01-14 00:00:00.000', 'Deposito Bancario', 1, 1, 15, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-09 00:00:00.000', '2009-07-09 00:00:00.000', 0, '3900', 'OBAL222', '2009-06-30 00:00:00.000', '2009-01-31 00:00:00.000', 'Deposito Bancario', 2, 1, 15, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-03-06 00:00:00.000', '2009-08-06 00:00:00.000', 0, '3700', 'OBAL223', '2009-07-26 00:00:00.000', '2009-02-26 00:00:00.000', 'Deposito Bancario', 3, 2, 15, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-12 00:00:00.000', '2009-05-12 00:00:00.000', 0, '4000', 'OBAL224', '2009-07-19 00:00:00.000', '2009-02-19 00:00:00.000', 'Deposito Bancario', 4, 2, 15, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-26 00:00:00.000', '2009-06-26 00:00:00.000', 0, '4000', 'OBAL225', '2009-07-01 00:00:00.000', '2009-02-01 00:00:00.000', 'Deposito Bancario', 5, 3, 15, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-07 00:00:00.000', '2009-06-07 00:00:00.000', 0, '2700', 'OBAL226', '2009-05-16 00:00:00.000', '2008-12-16 00:00:00.000', 'Deposito Bancario', 6, 3, 15, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2011-09-01 00:00:00.000', '2012-02-01 00:00:00.000', 0, '2500', 'OBAL227', '2009-05-23 00:00:00.000', '2008-12-23 00:00:00.000', 'Deposito Bancario', 7, 3, 15, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-13 00:00:00.000', '2009-07-13 00:00:00.000', 0, '2800', 'OBAL228', '2009-06-04 00:00:00.000', '2009-01-04 00:00:00.000', 'Deposito Bancario', 8, 4, 15, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-03-03 00:00:00.000', '2009-08-03 00:00:00.000', 0, '2500', 'OBAL229', '2009-06-11 00:00:00.000', '2009-01-11 00:00:00.000', 'Deposito Bancario', 9, 4, 15, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-12-02 00:00:00.000', '2010-05-02 00:00:00.000', 0, '2600', 'OBAL230', '2009-07-03 00:00:00.000', '2009-02-03 00:00:00.000', 'Deposito Bancario', 10, 5, 15, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-14 00:00:00.000', '2009-05-14 00:00:00.000', 0, '2700', 'OBAL231', '2009-08-07 00:00:00.000', '2009-03-07 00:00:00.000', 'Deposito Bancario', 11, 5, 15, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2010-02-16 00:00:00.000', '2010-07-16 00:00:00.000', 0, '2600', 'OBAL232', '2009-07-16 00:00:00.000', '2009-02-16 00:00:00.000', 'Deposito Bancario', 12, 5, 15, 6);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2010-03-05 00:00:00.000', '2010-08-05 00:00:00.000', 0, '5700', 'OBAL233', '2009-07-08 00:00:00.000', '2009-02-08 00:00:00.000', 'Deposito Bancario', 13, 6, 15, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2010-03-07 00:00:00.000', '2010-08-07 00:00:00.000', 0, '5900', 'OBAL234', '2009-05-09 00:00:00.000', '2008-12-09 00:00:00.000', 'Deposito Bancario', 14, 6, 15, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2010-01-27 00:00:00.000', '2010-06-27 00:00:00.000', 0, '6000', 'OBAL235', '2009-05-27 00:00:00.000', '2008-12-27 00:00:00.000', 'Deposito Bancario', 15, 7, 15, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-12-21 00:00:00.000', '2010-05-21 00:00:00.000', 0, '6000', 'OBAL236', '2009-06-15 00:00:00.000', '2009-01-15 00:00:00.000', 'Deposito Bancario', 1, 1, 16, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-31 00:00:00.000', '2009-06-30 00:00:00.000', 0, '6100', 'OBAL237', '2009-07-02 00:00:00.000', '2009-02-02 00:00:00.000', 'Deposito Bancario', 2, 1, 16, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2013-11-14 00:00:00.000', '2014-04-14 00:00:00.000', 0, '5900', 'OBAL238', '2009-07-26 00:00:00.000', '2009-02-26 00:00:00.000', 'Deposito Bancario', 3, 2, 16, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-06 00:00:00.000', '2009-05-06 00:00:00.000', 0, '6200', 'OBAL239', '2009-07-02 00:00:00.000', '2009-02-02 00:00:00.000', 'Deposito Bancario', 4, 2, 16, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-25 00:00:00.000', '2009-07-25 00:00:00.000', 0, '5700', 'OBAL240', '2009-08-06 00:00:00.000', '2009-03-06 00:00:00.000', 'Deposito Bancario', 5, 3, 16, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-06 00:00:00.000', '2009-07-06 00:00:00.000', 0, '4300', 'OBAL241', '2009-07-13 00:00:00.000', '2009-02-13 00:00:00.000', 'Deposito Bancario', 6, 3, 16, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-01 00:00:00.000', '2009-06-01 00:00:00.000', 0, '6400', 'OBAL242', '2010-08-05 00:00:00.000', '2010-03-05 00:00:00.000', 'Deposito Bancario', 7, 3, 16, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-25 00:00:00.000', '2009-05-25 00:00:00.000', 0, '6400', 'OBAL243', '2010-06-27 00:00:00.000', '2010-01-27 00:00:00.000', 'Deposito Bancario', 8, 4, 16, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-13 00:00:00.000', '2009-05-13 00:00:00.000', 0, '5500', 'OBAL244', '2009-05-04 00:00:00.000', '2008-12-04 00:00:00.000', 'Deposito Bancario', 9, 4, 16, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-30 00:00:00.000', '2009-06-30 00:00:00.000', 0, '6100', 'OBAL245', '2008-05-26 00:00:00.000', '2007-12-26 00:00:00.000', 'Deposito Bancario', 10, 5, 16, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-18 00:00:00.000', '2009-05-18 00:00:00.000', 0, '3700', 'OBAL246', '2009-06-21 00:00:00.000', '2009-01-21 00:00:00.000', 'Deposito Bancario', 11, 5, 16, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-06 00:00:00.000', '2009-06-06 00:00:00.000', 0, '3900', 'OBAL247', '2009-05-27 00:00:00.000', '2008-12-27 00:00:00.000', 'Deposito Bancario', 12, 5, 16, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-24 00:00:00.000', '2009-06-24 00:00:00.000', 0, '3700', 'OBAL248', '2009-06-02 00:00:00.000', '2009-01-02 00:00:00.000', 'Deposito Bancario', 13, 5, 16, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-18 00:00:00.000', '2009-07-18 00:00:00.000', 0, '3900', 'OBAL249', '2009-05-08 00:00:00.000', '2008-12-08 00:00:00.000', 'Deposito Bancario', 14, 7, 16, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-11 00:00:00.000', '2009-07-11 00:00:00.000', 0, '3800', 'OBAL250', '2009-07-26 00:00:00.000', '2009-02-26 00:00:00.000', 'Deposito Bancario', 15, 8, 16, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-03-01 00:00:00.000', '2009-08-01 00:00:00.000', 0, '3800', 'OBAL251', '2009-07-08 00:00:00.000', '2009-02-08 00:00:00.000', 'Deposito Bancario', 1, 1, 17, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-03-08 00:00:00.000', '2009-08-08 00:00:00.000', 0, '5900', 'OBAL252', '2008-07-08 00:00:00.000', '2008-02-08 00:00:00.000', 'Deposito Bancario', 2, 1, 17, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-25 00:00:00.000', '2009-05-25 00:00:00.000', 0, '2400', 'OBAL253', '2009-07-05 00:00:00.000', '2009-02-05 00:00:00.000', 'Deposito Bancario', 3, 1, 17, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2011-02-25 00:00:00.000', '2011-07-25 00:00:00.000', 0, '2500', 'OBAL254', '2009-07-23 00:00:00.000', '2009-02-23 00:00:00.000', 'Deposito Bancario', 4, 2, 17, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2011-07-31 00:00:00.000', '2011-12-31 00:00:00.000', 0, '2500', 'OBAL255', '2009-05-05 00:00:00.000', '2008-12-05 00:00:00.000', 'Deposito Bancario', 5, 3, 17, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2012-07-15 00:00:00.000', '2012-12-15 00:00:00.000', 0, '2600', 'OBAL256', '2009-05-24 00:00:00.000', '2008-12-24 00:00:00.000', 'Deposito Bancario', 6, 3, 17, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-10 00:00:00.000', '2009-07-10 00:00:00.000', 0, '2600', 'OBAL257', '2009-06-11 00:00:00.000', '2009-01-11 00:00:00.000', 'Deposito Bancario', 7, 3, 17, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-28 00:00:00.000', '2009-07-28 00:00:00.000', 0, '2400', 'OBAL258', '2009-06-18 00:00:00.000', '2009-01-18 00:00:00.000', 'Deposito Bancario', 8, 4, 17, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-12-17 00:00:00.000', '2010-05-17 00:00:00.000', 0, '5500', 'OBAL259', '2009-07-15 00:00:00.000', '2009-02-15 00:00:00.000', 'Deposito Bancario', 9, 4, 17, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2010-01-04 00:00:00.000', '2010-06-04 00:00:00.000', 0, '4000', 'OBAL260', '2009-05-01 00:00:00.000', '2008-12-01 00:00:00.000', 'Deposito Bancario', 10, 5, 17, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2010-01-11 00:00:00.000', '2010-06-11 00:00:00.000', 0, '4100', 'OBAL261', '2009-05-19 00:00:00.000', '2008-12-19 00:00:00.000', 'Deposito Bancario', 11, 6, 17, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2010-01-23 00:00:00.000', '2010-06-23 00:00:00.000', 0, '4100', 'OBAL262', '2009-06-07 00:00:00.000', '2009-01-07 00:00:00.000', 'Deposito Bancario', 12, 6, 17, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2010-01-27 00:00:00.000', '2010-06-27 00:00:00.000', 0, '4200', 'OBAL263', '2009-06-26 00:00:00.000', '2009-01-26 00:00:00.000', 'Deposito Bancario', 13, 7, 17, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2010-01-31 00:00:00.000', '2010-06-30 00:00:00.000', 0, '4200', 'OBAL264', '2009-07-12 00:00:00.000', '2009-02-12 00:00:00.000', 'Deposito Bancario', 14, 7, 17, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2010-03-09 00:00:00.000', '2010-08-09 00:00:00.000', 0, '4300', 'OBAL265', '2009-08-03 00:00:00.000', '2009-03-03 00:00:00.000', 'Deposito Bancario', 15, 8, 17, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2010-12-06 00:00:00.000', '2011-05-06 00:00:00.000', 0, '5300', 'OBAL266', '2009-05-22 00:00:00.000', '2008-12-22 00:00:00.000', 'Deposito Bancario', 1, 1, 18, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2010-12-25 00:00:00.000', '2011-05-25 00:00:00.000', 0, '6900', 'OBAL267', '2010-05-18 00:00:00.000', '2009-12-18 00:00:00.000', 'Deposito Bancario', 2, 1, 18, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-12 00:00:00.000', '2009-06-12 00:00:00.000', 0, '6800', 'OBAL268', '2010-07-01 00:00:00.000', '2010-02-01 00:00:00.000', 'Deposito Bancario', 3, 1, 18, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-11 00:00:00.000', '2009-05-11 00:00:00.000', 0, '6800', 'OBAL269', '2010-07-20 00:00:00.000', '2010-02-20 00:00:00.000', 'Deposito Bancario', 4, 2, 18, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-04 00:00:00.000', '2009-07-04 00:00:00.000', 0, '6700', 'OBAL270', '2010-06-12 00:00:00.000', '2010-01-12 00:00:00.000', 'Deposito Bancario', 5, 2, 18, 8);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-04 00:00:00.000', '2009-05-04 00:00:00.000', 0, '6900', 'OBAL271', '2010-08-10 00:00:00.000', '2010-03-10 00:00:00.000', 'Deposito Bancario', 6, 2, 18, 8);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-23 00:00:00.000', '2009-07-23 00:00:00.000', 0, '6900', 'OBAL272', '2009-05-26 00:00:00.000', '2008-12-26 00:00:00.000', 'Deposito Bancario', 7, 3, 18, 8);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-16 00:00:00.000', '2009-07-16 00:00:00.000', 0, '5600', 'OBAL273', '2009-06-03 00:00:00.000', '2009-01-03 00:00:00.000', 'Deposito Bancario', 8, 3, 18, 8);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-02-03 00:00:00.000', '2009-07-03 00:00:00.000', 0, '5400', 'OBAL274', '2009-05-04 00:00:00.000', '2008-12-04 00:00:00.000', 'Efectivo', 9, 3, 18, 8);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-11 00:00:00.000', '2009-06-11 00:00:00.000', 0, '5400', 'OBAL275', '2009-05-22 00:00:00.000', '2008-12-22 00:00:00.000', 'Efectivo', 10, 4, 18, 8);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-17 00:00:00.000', '2009-06-17 00:00:00.000', 0, '5500', 'OBAL276', '2009-07-13 00:00:00.000', '2009-02-13 00:00:00.000', 'Efectivo', 11, 4, 18, 8);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2009-01-22 00:00:00.000', '2009-06-22 00:00:00.000', 0, '5600', 'OBAL277', '2009-07-15 00:00:00.000', '2009-02-15 00:00:00.000', 'Efectivo', 12, 5, 18, 8);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2008-12-23 00:00:00.000', '2009-05-23 00:00:00.000', 0, '5300', 'OBAL278', '2009-07-22 00:00:00.000', '2009-02-22 00:00:00.000', 'Efectivo', 13, 5, 18, 8);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2011-02-15 00:00:00.000', '2011-07-15 00:00:00.000', 0, '5500', 'OBAL279', '2009-06-10 00:00:00.000', '2009-01-10 00:00:00.000', 'Efectivo', 14, 7, 18, 8);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code, end_date, init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2011-01-04 00:00:00.000', '2011-06-04 00:00:00.000', 0, '4100', 'OBAL280', '2009-07-20 00:00:00.000', '2009-02-20 00:00:00.000', 'Efectivo', 15, 7, 18, 8);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code,  init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2011-05-31 00:00:00.000', NULL, 0, '3000', 'OBAL281', '2008-12-09 00:00:00.000', 'Efectivo', 1, 1, 19, 8);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code,  init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2011-05-31 00:00:00.000', NULL, 0, '3000', 'OBAL282', '2008-12-28 00:00:00.000', 'Efectivo', 2, 1, 19, 8);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code,  init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2011-05-31 00:00:00.000', NULL, 0, '2800', 'OBAL283', '2009-01-22 00:00:00.000', 'Efectivo', 3, 2, 19, 8);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code,  init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2011-05-31 00:00:00.000', NULL, 0, '2900', 'OBAL284', '2009-02-09 00:00:00.000', 'Efectivo', 4, 3, 19, 8);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code,  init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2011-05-31 00:00:00.000', NULL, 0, '2900', 'OBAL285', '2009-02-28 00:00:00.000', 'Efectivo', 5, 3, 19, 8);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code,  init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2011-05-31 00:00:00.000', NULL, 0, '5800', 'OBAL286', '2009-02-26 00:00:00.000', 'Efectivo', 6, 4, 19, 8);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code,  init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2011-05-31 00:00:00.000', NULL, 0, '6200', 'OBAL287', '2008-12-02 00:00:00.000', 'Deposito Bancario', 7, 4, 19, 8);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code,  init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2011-05-31 00:00:00.000', NULL, 0, '6200', 'OBAL288', '2008-12-02 00:00:00.000', 'Deposito Bancario', 8, 5, 19, 5);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code,  init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2011-05-31 00:00:00.000', NULL, 0, '6300', 'OBAL289', '2009-01-08 00:00:00.000', 'Deposito Bancario', 9, 5, 19, 5);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code,  init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2012-09-30 00:00:00.000', NULL, 0, '6300', 'OBAL290', '2009-01-27 00:00:00.000', 'Deposito Bancario', 10, 6, 19, 5);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code,  init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2013-03-14 00:00:00.000', NULL, 0, '6100', 'OBAL291', '2009-02-20 00:00:00.000', 'Deposito Bancario', 11, 6, 19, 5);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code,  init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2013-05-30 00:00:00.000', NULL, 0, '6200', 'OBAL292', '2010-02-23 00:00:00.000', 'Deposito Bancario', 12, 7, 19, 5);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code,  init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2012-04-16 00:00:00.000', NULL, 0, '5800', 'OBAL293', '2008-12-16 00:00:00.000', 'Deposito Bancario', 13, 7, 19, 5);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code,  init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2013-05-30 00:00:00.000', NULL, 0, '4400', 'OBAL294', '2009-03-03 00:00:00.000', 'Deposito Bancario', 14, 7, 19, 5);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code,  init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2012-05-30 00:00:00.000', NULL, 0, '6500', 'OBAL295', '2010-02-16 00:00:00.000', 'Deposito Bancario', 15, 8, 19, 7);
INSERT INTO contract ( created_on, updated_on, version, contract_amount, contract_code,  init_date, payment_type, employee_id, position_id, project_id, type_contract_id)
VALUES ( '2012-05-30 00:00:00.000', NULL, 0, '6500', 'OBAL296', '2010-03-07 00:00:00.000', 'Deposito Bancario', 10, 7, 19, 7);
PRINT 'Tabla contract, insercion Completado...';


PRINT 'Insert data into the Project_Area table...';
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(1,1,'Terminado', 100, CAST('2018-06-20 22:27:23.723' AS DateTime), 100, CAST('2018-06-20 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(1,2,'Terminado', 100, CAST('2018-06-20 22:27:23.723' AS DateTime), 100, CAST('2018-06-20 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(1,3,'Terminado', 100, CAST('2018-06-20 22:27:23.723' AS DateTime), 100, CAST('2018-06-20 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(1,4,'Terminado', 100, CAST('2018-06-20 22:27:23.723' AS DateTime), 100, CAST('2018-06-20 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(1,5,'Terminado', 100, CAST('2018-06-20 22:27:23.723' AS DateTime), 100, CAST('2018-06-20 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(1,6,'Terminado', 100, CAST('2018-06-20 22:27:23.723' AS DateTime), 100, CAST('2018-06-20 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(1,7,'Terminado', 100, CAST('2018-06-20 22:27:23.723' AS DateTime), 100, CAST('2018-06-20 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(1,8,'Terminado', 100, CAST('2018-06-20 22:27:23.723' AS DateTime), 100, CAST('2018-06-20 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(2,7,'Terminado', 100, CAST('2014-02-10 22:27:23.723' AS DateTime), 100, CAST('2015-05-20 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(3,2,'Terminado', 100, CAST('2000-02-10 22:27:23.723' AS DateTime), 100, CAST('2001-07-20 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(3,3,'Terminado', 100, CAST('2000-02-10 22:27:23.723' AS DateTime), 100, CAST('2001-07-20 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(4,2,'Terminado', 100, CAST('2011-11-10 22:27:23.723' AS DateTime), 100, CAST('2012-11-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(4,1,'Terminado', 100, CAST('2011-11-10 22:27:23.723' AS DateTime), 100, CAST('2012-11-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(5,1,'Terminado', 100, CAST('2011-11-10 22:27:23.723' AS DateTime), 100, CAST('2012-11-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(6,8,'Terminado', 100, CAST('2012-01-20 22:27:23.723' AS DateTime), 100, CAST('2016-03-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(7,2,'Terminado', 100, CAST('2012-01-20 22:27:23.723' AS DateTime), 100, CAST('2012-01-20 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(8,7,'Terminado', 100, CAST('2016-04-20 22:27:23.723' AS DateTime), 100, CAST('2016-06-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(9,8,'Terminado', 100, CAST('2014-02-11 22:27:23.723' AS DateTime), 100, CAST('2014-04-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(10,2,'Terminado', 100, CAST('1990-04-20 22:27:23.723' AS DateTime), 100, CAST('2017-06-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(11,9,'Terminado', 100, CAST('2015-04-20 22:27:23.723' AS DateTime), 100, CAST('2018-06-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(12,9,'Terminado', 100, CAST('2015-04-20 22:27:23.723' AS DateTime), 100, CAST('2018-06-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(13,2,'En curso', 100, CAST('2018-01-23 22:27:23.723' AS DateTime), 100, CAST('2020-05-30 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(16,2,'En curso', 100, CAST('2017-09-09 22:27:23.723' AS DateTime), 100, CAST('2019-09-09 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(17,2,'Detenido', 100, CAST('2018-09-09 22:27:23.723' AS DateTime), 100, CAST('2018-12-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(19,2,'Detenido', 100, CAST('2018-09-09 22:27:23.723' AS DateTime), 100, CAST('2018-12-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(22,3,'En curso', 100, CAST('2018-01-01 22:27:23.723' AS DateTime), 100, CAST('2019-02-01 22:27:23.723' AS DateTime));
INSERT INTO [dbo].[Project_Area]([project_id],[area_id], [estado], [createBy], [createDate],[updateBy], [updateDate])
VALUES(23,6,'En curso', 100, CAST('2018-01-01 22:27:23.723' AS DateTime), 100, CAST('2019-02-01 22:27:23.723' AS DateTime));
PRINT 'Project_Area table done...';


PRINT 'Insert data into the Audit table...';
INSERT INTO [dbo].[Audit](create_On,update_On,version,auditName,auditCode,auditType,auditScope,auditObjective,auditCriteria,auditPeriodicity,employeeId,AreaId,ModifiedBy)
VALUES ('2017-05-05 00:00:00.000','2017-12-05 00:00:00.000',0,'WEEKNESS AUDIT','AUD-10','EXTERNAL','Strategic scope','Reduce weekness','Aplication standarts','ANNUAL',1,2,100)
INSERT INTO [dbo].[Audit](create_On,update_On,version,auditName,auditCode,auditType,auditScope,auditObjective,auditCriteria,auditPeriodicity,employeeId,AreaId,ModifiedBy)
VALUES ('2017-05-20 00:00:00.000','2017-12-20 00:00:00.000',0,'ACCIDENT AUDIT','AUD-20','INTERNAL','Strategic scope','Reduce accidents','Aplication standart ISO 9001:2015','MONTHLY',2,2,100)
INSERT INTO [dbo].[Audit](create_On,update_On,version,auditName,auditCode,auditType,auditScope,auditObjective,auditCriteria,auditPeriodicity,employeeId,AreaId,ModifiedBy)
VALUES ('2018-06-20 00:00:00.000','2018-06-20 00:00:00.000',0,'ACCIDENT AUDIT','AUD-30','INTERNAL','Strategic scope','Reduce incidents','Aplication internal rule','MONTHLY',2,3,100)
INSERT INTO [dbo].[Audit](create_On,update_On,version,auditName,auditCode,auditType,auditScope,auditObjective,auditCriteria,auditPeriodicity,employeeId,AreaId,ModifiedBy)
VALUES ('2018-06-20 00:00:00.000','2018-06-20 00:00:00.000',0,'ACCIDENT AUDIT','AUD-40','INTERNAL','Strategic scope','Reduce incidents','Aplication internal rule','MONTHLY',2,4,100)
INSERT INTO [dbo].[Audit](create_On,update_On,version,auditName,auditCode,auditType,auditScope,auditObjective,auditCriteria,auditPeriodicity,employeeId,AreaId,ModifiedBy)
VALUES ('2018-06-20 00:00:00.000','2018-06-20 00:00:00.000',0,'ACCIDENT AUDIT','AUD-50','INTERNAL','Strategic scope','Reduce incidents','Aplication internal rule','MONTHLY',2,5,100)
PRINT 'Audit table done...';


PRINT 'Insert data into the SafetyRule table...';
INSERT INTO  [dbo].[SafetyRule] (create_On,update_On,version,policyCode,policyName,complianceParameter,complianceMetric,accomplishment,ModifiedBy,auditId)
VALUES ('2017-06-05 00:00:00.000','2017-06-05 00:00:00.000',0,'POLICY-INTAUD20-0001','ROUTINE POLICY',80,100,1,100,2)
INSERT INTO  [dbo].[SafetyRule] (create_On,update_On,version,policyCode,policyName,complianceParameter,complianceMetric,accomplishment,ModifiedBy,auditId)
VALUES ('2017-07-05 00:00:00.000','2017-07-05 00:00:00.000',0,'POLICY-INTAUD20-0002','ROUTINE POLICY',80,90,1,100,2)
INSERT INTO  [dbo].[SafetyRule] (create_On,update_On,version,policyCode,policyName,complianceParameter,complianceMetric,accomplishment,ModifiedBy,auditId)
VALUES ('2017-08-05 00:00:00.000','2017-08-05 00:00:00.000',0,'POLICY-INTAUD20-0003','ROUTINE POLICY',80,90,1,100,2)
INSERT INTO  [dbo].[SafetyRule] (create_On,update_On,version,policyCode,policyName,complianceParameter,complianceMetric,accomplishment,ModifiedBy,auditId)
VALUES ('2017-09-05 00:00:00.000','2017-09-05 00:00:00.000',0,'POLICY-INTAUD20-0004','ROUTINE POLICY',80,70,0,100,2)
INSERT INTO  [dbo].[SafetyRule] (create_On,update_On,version,policyCode,policyName,complianceParameter,complianceMetric,accomplishment,ModifiedBy,auditId)
VALUES ('2017-10-05 00:00:00.000','2017-10-05 00:00:00.000',0,'POLICY-INTAUD20-0005','ROUTINE POLICY',80,90,1,100,2)
INSERT INTO  [dbo].[SafetyRule] (create_On,update_On,version,policyCode,policyName,complianceParameter,complianceMetric,accomplishment,ModifiedBy,auditId)
VALUES ('2017-11-05 00:00:00.000','2017-11-05 00:00:00.000',0,'POLICY-INTAUD20-0006','ROUTINE POLICY',80,90,1,100,2)
INSERT INTO  [dbo].[SafetyRule] (create_On,update_On,version,policyCode,policyName,complianceParameter,complianceMetric,accomplishment,ModifiedBy,auditId)
VALUES ('2017-12-05 00:00:00.000','2017-12-05 00:00:00.000',0,'POLICY-INTAUD20-0007','ROUTINE POLICY',80,90,1,100,2)
INSERT INTO  [dbo].[SafetyRule] (create_On,update_On,version,policyCode,policyName,complianceParameter,complianceMetric,accomplishment,ModifiedBy,auditId)
VALUES ('2018-01-05 00:00:00.000','2018-01-05 00:00:00.000',0,'POLICY-INTAUD20-0008','ROUTINE POLICY',80,90,1,100,2)
INSERT INTO  [dbo].[SafetyRule] (create_On,update_On,version,policyCode,policyName,complianceParameter,complianceMetric,accomplishment,ModifiedBy,auditId)
VALUES ('2018-02-05 00:00:00.000','2018-02-05 00:00:00.000',0,'POLICY-INTAUD20-0009','ROUTINE POLICY',80,90,1,100,2)
INSERT INTO  [dbo].[SafetyRule] (create_On,update_On,version,policyCode,policyName,complianceParameter,complianceMetric,accomplishment,ModifiedBy,auditId)
VALUES ('2018-03-05 00:00:00.000','2018-03-05 00:00:00.000',0,'POLICY-INTAUD20-0010','ROUTINE POLICY',80,90,1,100,2)
INSERT INTO  [dbo].[SafetyRule] (create_On,update_On,version,policyCode,policyName,complianceParameter,complianceMetric,accomplishment,ModifiedBy,auditId)
VALUES ('2018-04-05 00:00:00.000','2018-04-05 00:00:00.000',0,'POLICY-INTAUD20-0011','ROUTINE POLICY',80,90,1,100,2)
INSERT INTO  [dbo].[SafetyRule] (create_On,update_On,version,policyCode,policyName,complianceParameter,complianceMetric,accomplishment,ModifiedBy,auditId)
VALUES ('2018-05-05 00:00:00.000','2018-05-05 00:00:00.000',0,'POLICY-INTAUD20-0012','ROUTINE POLICY',80,50,0,100,2)
INSERT INTO  [dbo].[SafetyRule] (create_On,update_On,version,policyCode,policyName,complianceParameter,complianceMetric,accomplishment,ModifiedBy,auditId)
VALUES ('2018-06-05 00:00:00.000','2018-06-05 00:00:00.000',0,'POLICY-INTAUD20-0013','ROUTINE POLICY',80,90,1,100,2)
PRINT 'SafetyRule table done...';



PRINT 'Insert data into the TypeEvent table...';
INSERT INTO [dbo].[TypeEvent](created_on, typeEvent)
VALUES ('2018-06-25', 'Incidente');
INSERT INTO [dbo].[TypeEvent](created_on, typeEvent)
VALUES ('2018-06-25', 'Accidente');
PRINT 'TypeEvent table done...';

PRINT 'Insert data into the InjuryType table...';
INSERT INTO [dbo].[InjuryType](created_on, injuryType)
VALUES ('2018-06-25', 'Escoriaciones');
INSERT INTO [dbo].[InjuryType](created_on, injuryType)
VALUES ('2018-06-25', 'Heridas punzantes');
INSERT INTO [dbo].[InjuryType](created_on, injuryType)
VALUES ('2018-06-25', 'Heridas cortantes');
INSERT INTO [dbo].[InjuryType](created_on, injuryType)
VALUES ('2018-06-25', 'Heridas contusas');
INSERT INTO [dbo].[InjuryType](created_on, injuryType)
VALUES ('2018-06-25', 'Perdida de tejido');
INSERT INTO [dbo].[InjuryType](created_on, injuryType)
VALUES ('2018-06-25', 'Contusiones');
INSERT INTO [dbo].[InjuryType](created_on, injuryType)
VALUES ('2018-06-25', 'Luxacion');
INSERT INTO [dbo].[InjuryType](created_on, injuryType)
VALUES ('2018-06-25', 'Fractura');
INSERT INTO [dbo].[InjuryType](created_on, injuryType)
VALUES ('2018-06-25', 'Amputacion');
INSERT INTO [dbo].[InjuryType](created_on, injuryType)
VALUES ('2018-06-25', 'Quemadura');
INSERT INTO [dbo].[InjuryType](created_on, injuryType)
VALUES ('2018-06-25', 'Cuerpo extraño en el ojo');
INSERT INTO [dbo].[InjuryType](created_on, injuryType)
VALUES ('2018-06-25', 'Perdida ocular');
PRINT 'InjuryType table done...';

PRINT 'Insert data into the InjuryPart table...';
INSERT INTO [dbo].[InjuryPart](created_on, injuryPart)
VALUES ('2018-06-25', 'Region craneana');
INSERT INTO [dbo].[InjuryPart](created_on, injuryPart)
VALUES ('2018-06-25', 'Ojos');
INSERT INTO [dbo].[InjuryPart](created_on, injuryPart)
VALUES ('2018-06-25', 'Boca');
INSERT INTO [dbo].[InjuryPart](created_on, injuryPart)
VALUES ('2018-06-25', 'Cara');
INSERT INTO [dbo].[InjuryPart](created_on, injuryPart)
VALUES ('2018-06-25', 'Nariz y senos paranasales');
INSERT INTO [dbo].[InjuryPart](created_on, injuryPart)
VALUES ('2018-06-25', 'Aparato auditivo');
INSERT INTO [dbo].[InjuryPart](created_on, injuryPart)
VALUES ('2018-06-25', 'Cabeza ubicaciones multiples');
INSERT INTO [dbo].[InjuryPart](created_on, injuryPart)
VALUES ('2018-06-25', 'Cuello');
INSERT INTO [dbo].[InjuryPart](created_on, injuryPart)
VALUES ('2018-06-25', 'Region cervical');
INSERT INTO [dbo].[InjuryPart](created_on, injuryPart)
VALUES ('2018-06-25', 'Region lumbosacra');
INSERT INTO [dbo].[InjuryPart](created_on, injuryPart)
VALUES ('2018-06-25', 'Region dorsal');
INSERT INTO [dbo].[InjuryPart](created_on, injuryPart)
VALUES ('2018-06-25', 'Torax');
PRINT 'InjuryPart table done...';

PRINT 'Insert data into the Eventuality table...';
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2018-01-13', 'Sin mayores detalles', 1, 1, 1, 1, 1);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2017-09-13', 'Sin mayores detalles', 2, 2, 2, 2, 1);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2016-01-13', 'Sin mayores detalles', 1, 3, 3, 3, 1);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2015-02-13', 'Sin mayores detalles', 2, 4, 4, 4, 1);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2014-03-13', 'Sin mayores detalles', 1, 5, 5, 5, 1);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2013-10-13', 'Sin mayores detalles', 2, 6, 6, 6, 1);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2018-07-13', 'Sin mayores detalles', 1, 7, 7, 7, 2);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2017-02-13', 'Sin mayores detalles', 2, 8, 8, 8, 2);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2013-06-13', 'Sin mayores detalles', 1, 9, 9, 9, 2);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2018-03-13', 'Sin mayores detalles', 2, 10, 10, 10, 2);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2018-05-13', 'Sin mayores detalles', 1, 11, 11, 11, 2);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2014-12-13', 'Sin mayores detalles', 2, 12, 12, 12, 2);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2016-08-13', 'Sin mayores detalles', 1, 1, 1, 13, 3);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2015-07-13', 'Sin mayores detalles', 2, 2, 2, 14, 3);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2014-06-13', 'Sin mayores detalles', 1, 3, 3, 15, 3);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2013-01-13', 'Sin mayores detalles', 2, 4, 4, 1, 3);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2017-03-13', 'Sin mayores detalles', 1, 5, 5, 2, 3);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2016-02-13', 'Sin mayores detalles', 2, 6, 6, 3, 3);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2018-03-13', 'Sin mayores detalles', 1, 7, 7, 1, 4);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2018-08-13', 'Sin mayores detalles', 2, 8, 8, 2, 4);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2013-12-13', 'Sin mayores detalles', 1, 9, 9, 3, 4);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2016-04-13', 'Sin mayores detalles', 2, 10, 10, 4, 4);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2014-11-13', 'Sin mayores detalles', 1, 11, 11, 5, 4);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2018-02-13', 'Sin mayores detalles', 2, 12, 12, 6, 4);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2015-09-13', 'Sin mayores detalles', 1, 1, 1, 7, 5);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2017-01-13', 'Sin mayores detalles', 2, 2, 2, 8, 5);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2013-09-13', 'Sin mayores detalles', 1, 3, 3, 9, 5);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2016-10-13', 'Sin mayores detalles', 2, 4, 4, 10, 5);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2018-02-13', 'Sin mayores detalles', 1, 5, 5, 11, 5);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2018-03-13', 'Sin mayores detalles', 2, 6, 6, 12, 5);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2017-06-13', 'Sin mayores detalles', 1, 7, 1, 13, 6);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2018-01-13', 'Sin mayores detalles', 2, 8, 2, 14, 6);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2017-12-13', 'Sin mayores detalles', 1, 9, 3, 15, 6);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2017-11-13', 'Sin mayores detalles', 2, 10, 4, 1, 6);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2017-12-13', 'Sin mayores detalles', 1, 11, 5, 2, 6);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2016-11-13', 'Sin mayores detalles', 2, 12, 6, 3, 6);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2015-05-13', 'Sin mayores detalles', 1, 1, 7, 1, 7);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2017-01-13', 'Sin mayores detalles', 2, 2, 8, 2, 7);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2014-10-13', 'Sin mayores detalles', 1, 3, 9, 3, 7);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2013-06-13', 'Sin mayores detalles', 2, 4, 10, 4, 7);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2016-06-13', 'Sin mayores detalles', 1, 5, 11, 5, 7);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2015-05-13', 'Sin mayores detalles', 2, 6, 12, 6, 7);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2018-03-13', 'Sin mayores detalles', 1, 7, 1, 7, 8);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2017-02-13', 'Sin mayores detalles', 2, 8, 2, 8, 8);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2018-01-13', 'Sin mayores detalles', 1, 9, 3, 9, 8);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2017-06-13', 'Sin mayores detalles', 2, 10, 4, 10, 8);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2015-09-13', 'Sin mayores detalles', 1, 11, 5, 11, 8);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2014-12-13', 'Sin mayores detalles', 2, 12, 6, 12, 8);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2016-06-13', 'Sin mayores detalles', 1, 1, 7, 13, 9);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2015-03-13', 'Sin mayores detalles', 2, 2, 8, 14, 9);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2013-04-13', 'Sin mayores detalles', 1, 3, 9, 15, 9);
INSERT INTO [dbo].[Eventuality](created_on, dateEvent, [description], typeEvent_id, injuryType_id, injuryPart_id, employee_id, projectArea_id)
VALUES ('2018-06-25', '2018-03-13', 'Sin mayores detalles', 2, 4, 10, 1, 9);

PRINT 'Eventuality table done...';

--ITEM TYPE
PRINT 'Insert data into the Item table...';
INSERT INTO [dbo].[ItemType]([create_On],[update_On] ,[version] ,[name],[description],[ModifiedBy])
     VALUES (GETDATE() ,GETDATE(),1,'Construction','Item de construccion',1)
GO
INSERT INTO [dbo].[ItemType]([create_On],[update_On] ,[version] ,[name],[description],[ModifiedBy])
     VALUES (GETDATE() ,GETDATE(),1,'Construction','Item de construccion',1)
GO
INSERT INTO [dbo].[ItemType]([create_On],[update_On] ,[version] ,[name],[description],[ModifiedBy])
     VALUES (GETDATE() ,GETDATE(),1,'Construction','Item de construccion',1)
GO
INSERT INTO [dbo].[ItemType]([create_On],[update_On] ,[version] ,[name],[description],[ModifiedBy])
     VALUES (GETDATE() ,GETDATE(),1,'Construction','Item de construccion',1)
GO
INSERT INTO [dbo].[ItemType]([create_On],[update_On] ,[version] ,[name],[description],[ModifiedBy])
     VALUES (GETDATE() ,GETDATE(),1,'Construction','Item de construccion',1)
GO
INSERT INTO [dbo].[ItemType]([create_On],[update_On] ,[version] ,[name],[description],[ModifiedBy])
     VALUES (GETDATE() ,GETDATE(),1,'Construction','Item de construccion',1)
GO
INSERT INTO [dbo].[ItemType]([create_On],[update_On] ,[version] ,[name],[description],[ModifiedBy])
     VALUES (GETDATE() ,GETDATE(),1,'Construction','Item de construccion',1)
GO


INSERT INTO [dbo].[ItemType]([create_On],[update_On] ,[version] ,[name],[description],[ModifiedBy])
     VALUES (GETDATE() ,GETDATE(),2,'Seguridad','Item de equipo de seguridad',3)
GO
INSERT INTO [dbo].[ItemType]([create_On],[update_On] ,[version] ,[name],[description],[ModifiedBy])
     VALUES (GETDATE() ,GETDATE(),2,'Seguridad','Item de equipo de seguridad',3)
GO
INSERT INTO [dbo].[ItemType]([create_On],[update_On] ,[version] ,[name],[description],[ModifiedBy])
     VALUES (GETDATE() ,GETDATE(),2,'Seguridad','Item de equipo de seguridad',3)
GO
INSERT INTO [dbo].[ItemType]([create_On],[update_On] ,[version] ,[name],[description],[ModifiedBy])
     VALUES (GETDATE() ,GETDATE(),2,'Seguridad','Item de equipo de seguridad',3)
GO
INSERT INTO [dbo].[ItemType]([create_On],[update_On] ,[version] ,[name],[description],[ModifiedBy])
     VALUES (GETDATE() ,GETDATE(),2,'Seguridad','Item de equipo de seguridad',3)
GO
INSERT INTO [dbo].[ItemType]([create_On],[update_On] ,[version] ,[name],[description],[ModifiedBy])
     VALUES (GETDATE() ,GETDATE(),2,'Seguridad','Item de equipo de seguridad',3)
GO
INSERT INTO [dbo].[ItemType]([create_On],[update_On] ,[version] ,[name],[description],[ModifiedBy])
     VALUES (GETDATE() ,GETDATE(),2,'Seguridad','Item de equipo de seguridad',3)
GO
INSERT INTO [dbo].[ItemType]([create_On],[update_On] ,[version] ,[name],[description],[ModifiedBy])
     VALUES (GETDATE() ,GETDATE(),2,'Seguridad','Item de equipo de seguridad',3)
GO
INSERT INTO [dbo].[ItemType]([create_On],[update_On] ,[version] ,[name],[description],[ModifiedBy])
     VALUES (GETDATE() ,GETDATE(),2,'Seguridad','Item de equipo de seguridad',3)
GO
INSERT INTO [dbo].[ItemType]([create_On],[update_On] ,[version] ,[name],[description],[ModifiedBy])
     VALUES (GETDATE() ,GETDATE(),2,'Seguridad','Item de equipo de seguridad',3)
GO
INSERT INTO [dbo].[ItemType]([create_On],[update_On] ,[version] ,[name],[description],[ModifiedBy])
     VALUES (GETDATE() ,GETDATE(),2,'Seguridad','Item de equipo de seguridad',3)
GO
INSERT INTO [dbo].[ItemType]([create_On],[update_On] ,[version] ,[name],[description],[ModifiedBy])
     VALUES (GETDATE() ,GETDATE(),2,'Seguridad','Item de equipo de seguridad',3)
GO

PRINT 'ItemType table done...';



--SUBCATEGORY
PRINT 'Insert data into the SubCategory table...';
INSERT INTO [dbo].[SubCategory]([create_On],[update_On],[version],[name],[CategoryID],[description])
     VALUES (GETDATE()  ,GETDATE() ,1,'De ladrillos comunes',1,'item de sucategoria de construccion')
GO
INSERT INTO [dbo].[SubCategory]([create_On],[update_On],[version],[name],[CategoryID],[description])
     VALUES (GETDATE()  ,GETDATE() ,1,'En muros',1,'item de sucategoria de construccion')
GO
INSERT INTO [dbo].[SubCategory]([create_On],[update_On],[version],[name],[CategoryID],[description])
     VALUES (GETDATE()  ,GETDATE() ,1,'En cimentación',1,'item de sucategoria de construccion')
GO
INSERT INTO [dbo].[SubCategory]([create_On],[update_On],[version],[name],[CategoryID],[description])
     VALUES (GETDATE()  ,GETDATE() ,1,'Revoques interiores',1,'item de sucategoria de construccion')
GO
INSERT INTO [dbo].[SubCategory]([create_On],[update_On],[version],[name],[CategoryID],[description])
     VALUES (GETDATE()  ,GETDATE() ,1,'Revoques exteriores',1,'item de sucategoria de construccion')
GO
INSERT INTO [dbo].[SubCategory]([create_On],[update_On],[version],[name],[CategoryID],[description])
     VALUES (GETDATE() ,GETDATE() ,1,'cemento con endurecedor',1,'item de sucategoria de construccion')
GO
INSERT INTO [dbo].[SubCategory]([create_On],[update_On],[version],[name],[CategoryID],[description])
     VALUES (GETDATE()  ,GETDATE() ,1,'Piso de mosaico granítico',1,'item de sucategoria de construccion')
GO
INSERT INTO [dbo].[SubCategory]([create_On],[update_On],[version],[name],[CategoryID],[description])
     VALUES (GETDATE()  ,GETDATE() ,1,'Mesones de cocina',1,'item de sucategoria de construccion')
GO
INSERT INTO [dbo].[SubCategory]([create_On],[update_On],[version],[name],[CategoryID],[description])
     VALUES (GETDATE()  ,GETDATE() ,1,'Cubierta de eternit',1,'item de sucategoria de construccion')
GO
INSERT INTO [dbo].[SubCategory]([create_On],[update_On],[version],[name],[CategoryID],[description])
     VALUES (GETDATE()  ,GETDATE() ,1,'Carpintería de hierro',1,'item de sucategoria de construcciond')
GO
INSERT INTO [dbo].[SubCategory]([create_On],[update_On],[version],[name],[CategoryID],[description])
     VALUES (GETDATE()  ,GETDATE() ,1,'Puertas',1,'item de sucategoria de construccion')
GO
INSERT INTO [dbo].[SubCategory]([create_On],[update_On],[version],[name],[CategoryID],[description])
     VALUES (GETDATE()  ,GETDATE() ,1,'Carpintería de aluminio',1,'item de sucategoria de construccion')
GO
INSERT INTO [dbo].[SubCategory]([create_On],[update_On],[version],[name],[CategoryID],[description])
     VALUES (GETDATE()  ,GETDATE() ,1,'Ventanas',1,'item de sucategoria de construccion')
GO
INSERT INTO [dbo].[SubCategory]([create_On],[update_On],[version],[name],[CategoryID],[description])
     VALUES (GETDATE()  ,GETDATE() ,1,'Respiradores de uso general',1,'Un item de subcategoria de seguridad')
GO
INSERT INTO [dbo].[SubCategory]([create_On],[update_On],[version],[name],[CategoryID],[description])
     VALUES (GETDATE()  ,GETDATE() ,1,'Orejeras',1,'Un item de subcategoria de seguridad')
GO
INSERT INTO [dbo].[SubCategory]([create_On],[update_On],[version],[name],[CategoryID],[description])
     VALUES (GETDATE()  ,GETDATE() ,1,'Protección para el rostro',1,'Un item de subcategoria de seguridad')
GO
INSERT INTO [dbo].[SubCategory]([create_On],[update_On],[version],[name],[CategoryID],[description])
     VALUES (GETDATE()  ,GETDATE() ,1,'Goggles de seguridad',1,'Un item de subcategoria de seguridad')
GO
INSERT INTO [dbo].[SubCategory]([create_On],[update_On],[version],[name],[CategoryID],[description])
     VALUES (GETDATE()  ,GETDATE() ,1,'Tapones auditivos de espuma',1,'Un item de subcategoria de seguridad')
GO
INSERT INTO [dbo].[SubCategory]([create_On],[update_On],[version],[name],[CategoryID],[description])
     VALUES (GETDATE()  ,GETDATE() ,1,'Tapones auditivos Push-to-Fit',1,'Un item de subcategoria de seguridad')
GO

PRINT 'SubCategory table done...';



--CATEGORY
PRINT 'Insert data into the Category table...';
INSERT INTO [dbo].[Category]([create_On],[update_On],[version],[name],[description],[SubCategoryID])
     VALUES(GETDATE(),GETDATE(),1,'Revoques','Items de Albañilería',1)
GO
INSERT INTO [dbo].[Category]([create_On],[update_On],[version],[name],[description],[SubCategoryID])
     VALUES(GETDATE(),GETDATE(),1,'Pisos','Items de Albañilería',2)
GO
INSERT INTO [dbo].[Category]([create_On],[update_On],[version],[name],[description],[SubCategoryID])
     VALUES(GETDATE(),GETDATE(),1,'Granitos','Items de Albañilería',3)
GO
INSERT INTO [dbo].[Category]([create_On],[update_On],[version],[name],[description],[SubCategoryID])
     VALUES(GETDATE(),GETDATE(),1,'Cubiertas','Items de Albañilería',4)
GO
INSERT INTO [dbo].[Category]([create_On],[update_On],[version],[name],[description],[SubCategoryID])
     VALUES(GETDATE(),GETDATE(),1,'Carpintería metálica','Items de Albañilería',5)
GO
INSERT INTO [dbo].[Category]([create_On],[update_On],[version],[name],[description],[SubCategoryID])
     VALUES(GETDATE(),GETDATE(),1,'Varios','Items de Albañilería',1)
GO
INSERT INTO [dbo].[Category]([create_On],[update_On],[version],[name],[description],[SubCategoryID])
     VALUES(GETDATE(),GETDATE(),1,'Vidrios y espejos','Items de Albañilería',2)
GO
INSERT INTO [dbo].[Category]([create_On],[update_On],[version],[name],[description],[SubCategoryID])
     VALUES(GETDATE(),GETDATE(),1,'Accesorios de baño','Items de Albañilería',3)
GO
INSERT INTO [dbo].[Category]([create_On],[update_On],[version],[name],[description],[SubCategoryID])
     VALUES(GETDATE(),GETDATE(),1,'Acero de alta resistencia','Items de Albañilería',4)
GO
INSERT INTO [dbo].[Category]([create_On],[update_On],[version],[name],[description],[SubCategoryID])
     VALUES(GETDATE(),GETDATE(),1,'Acuacolor','Items de Albañilería',7)
GO
INSERT INTO [dbo].[Category]([create_On],[update_On],[version],[name],[description],[SubCategoryID])
     VALUES(GETDATE(),GETDATE(),1,'Adaptador PVC E-40','Items de Albañilería',8)
GO
INSERT INTO [dbo].[Category]([create_On],[update_On],[version],[name],[description],[SubCategoryID])
     VALUES(GETDATE(),GETDATE(),1,'Adhesivo para P.V.C.','Items de Albañilería',3)
GO
INSERT INTO [dbo].[Category]([create_On],[update_On],[version],[name],[description],[SubCategoryID])
     VALUES(GETDATE(),GETDATE(),1,'Agua','Items de Albañilería',5)
GO
INSERT INTO [dbo].[Category]([create_On],[update_On],[version],[name],[description],[SubCategoryID])
     VALUES(GETDATE(),GETDATE(),1,'Aguarras','Items de seguridad',1)
GO
INSERT INTO [dbo].[Category]([create_On],[update_On],[version],[name],[description],[SubCategoryID])
     VALUES(GETDATE(),GETDATE(),1,' Arnés de seguridad','Items de seguridad',1)
GO
INSERT INTO [dbo].[Category]([create_On],[update_On],[version],[name],[description],[SubCategoryID])
     VALUES(GETDATE(),GETDATE(),1,'Atalajes de casco','Items de seguridad',7)
GO
INSERT INTO [dbo].[Category]([create_On],[update_On],[version],[name],[description],[SubCategoryID])
     VALUES(GETDATE(),GETDATE(),1,'Barbuquejos de casco','Items de seguridad',8)
GO
INSERT INTO [dbo].[Category]([create_On],[update_On],[version],[name],[description],[SubCategoryID])
     VALUES(GETDATE(),GETDATE(),1,'Batas','Items de seguridad',4)
GO

PRINT 'Category table done...';



--ITEM
PRINT 'Insert data into the Item table...';
INSERT INTO [dbo].[Item]([create_On],[update_On],[version],[name],[description],[ModifiedBy],[CategoryID],[SubCategoryID],[ItemTypeID])
     VALUES (GETDATE(),GETDATE(),1,'Vidrios y espejos','Vidrios transparentes',1,2,1,1)
GO
INSERT INTO [dbo].[Item]([create_On],[update_On],[version],[name],[description],[ModifiedBy],[CategoryID],[SubCategoryID],[ItemTypeID])
     VALUES (GETDATE(),GETDATE(),1,'Pintura','Paramentos',1,2,1,1)
GO
INSERT INTO [dbo].[Item]([create_On],[update_On],[version],[name],[description],[ModifiedBy],[CategoryID],[SubCategoryID],[ItemTypeID])
     VALUES (GETDATE(),GETDATE(),1,'Instalaciones Hidrosanitarias','equipo de seguridad',1,2,1,1)
GO
INSERT INTO [dbo].[Item]([create_On],[update_On],[version],[name],[description],[ModifiedBy],[CategoryID],[SubCategoryID],[ItemTypeID])
     VALUES (GETDATE(),GETDATE(),1,'Instalaciones Eléctricas','Instalación de luminarias y tomacorrientes',1,2,1,1)
GO
INSERT INTO [dbo].[Item]([create_On],[update_On],[version],[name],[description],[ModifiedBy],[CategoryID],[SubCategoryID],[ItemTypeID])
     VALUES (GETDATE(),GETDATE(),1,' Carpintería metálica','Carpintería de hierro',1,2,1,1)
GO
INSERT INTO [dbo].[Item]([create_On],[update_On],[version],[name],[description],[ModifiedBy],[CategoryID],[SubCategoryID],[ItemTypeID])
     VALUES (GETDATE(),GETDATE(),1,'Pisos','Piso de cemento con endurecedor',1,2,1,1)
GO
INSERT INTO [dbo].[Item]([create_On],[update_On],[version],[name],[description],[ModifiedBy],[CategoryID],[SubCategoryID],[ItemTypeID])
     VALUES (GETDATE(),GETDATE(),1,'Granitos','Mesones de cocina',1,2,1,1)
GO

INSERT INTO [dbo].[Item]([create_On],[update_On],[version],[name],[description],[ModifiedBy],[CategoryID],[SubCategoryID],[ItemTypeID])
     VALUES (GETDATE(),GETDATE(),1,'Vialidad','La seguridad vial en los lugares de trabajo es esencial para tener una alta visibilidad',1,2,1,1)
GO
INSERT INTO [dbo].[Item]([create_On],[update_On],[version],[name],[description],[ModifiedBy],[CategoryID],[SubCategoryID],[ItemTypeID])
     VALUES (GETDATE(),GETDATE(),1,'Traje de apicultor','Diseñado para protección completa de las personas que realizan actividades en zonas',1,2,1,1)
GO
INSERT INTO [dbo].[Item]([create_On],[update_On],[version],[name],[description],[ModifiedBy],[CategoryID],[SubCategoryID],[ItemTypeID])
     VALUES (GETDATE(),GETDATE(),1,'Salud e Higiene','La industria requiere de productos de higiene personal y limpieza de áreas',1,2,1,1)
GO
INSERT INTO [dbo].[Item]([create_On],[update_On],[version],[name],[description],[ModifiedBy],[CategoryID],[SubCategoryID],[ItemTypeID])
     VALUES (GETDATE(),GETDATE(),1,'Ropa para Cuartos Fríos','Ropa térmica para proteger al trabajador contra el frío, en temperaturas por debajo de los 0° ',1,2,1,1)
GO
INSERT INTO [dbo].[Item]([create_On],[update_On],[version],[name],[description],[ModifiedBy],[CategoryID],[SubCategoryID],[ItemTypeID])
     VALUES (GETDATE(),GETDATE(),1,'Respiratorio y Auditivo','Productos para la protección respiratoria en lugares con partículas, gases',1,2,1,1)
GO
INSERT INTO [dbo].[Item]([create_On],[update_On],[version],[name],[description],[ModifiedBy],[CategoryID],[SubCategoryID],[ItemTypeID])
     VALUES (GETDATE(),GETDATE(),1,'Lentes y Cascos','Los lentes, cascos y caretas que ofrecemos son resistentes contra altos impactos',1,2,1,1)
GO
INSERT INTO [dbo].[Item]([create_On],[update_On],[version],[name],[description],[ModifiedBy],[CategoryID],[SubCategoryID],[ItemTypeID])
     VALUES (GETDATE(),GETDATE(),1,'Guantes','Con extenso surtido de guantes a elegir de acuerdo al tipo de trabajo que se desarrolle',1,2,1,1)
GO
INSERT INTO [dbo].[Item]([create_On],[update_On],[version],[name],[description],[ModifiedBy],[CategoryID],[SubCategoryID],[ItemTypeID])
     VALUES (GETDATE(),GETDATE(),1,'Fajas Cinturones y Arneses','La protección y seguridad de los trabajadores que realizan actividades en alturas y trabajos físicos de carga',1,2,1,1)
GO
INSERT INTO [dbo].[Item]([create_On],[update_On],[version],[name],[description],[ModifiedBy],[CategoryID],[SubCategoryID],[ItemTypeID])
     VALUES (GETDATE(),GETDATE(),1,'Equipo y Ropa Desechable','Productos desechables utilizados en la industria de diversos ramos donde se requiera protección',1,2,1,1)
GO
INSERT INTO [dbo].[Item]([create_On],[update_On],[version],[name],[description],[ModifiedBy],[CategoryID],[SubCategoryID],[ItemTypeID])
     VALUES (GETDATE(),GETDATE(),1,'Equipo Antiestático','El equipo que manejamos cumple con las necesidades de la industria que requiere',1,2,1,1)
GO
INSERT INTO [dbo].[Item]([create_On],[update_On],[version],[name],[description],[ModifiedBy],[CategoryID],[SubCategoryID],[ItemTypeID])
     VALUES (GETDATE(),GETDATE(),1,'Chalecos','El chaleco de visibilidad contra accidentes es primordial su uso, para las personas que realizan actividades',1,2,1,1)
GO
INSERT INTO [dbo].[Item]([create_On],[update_On],[version],[name],[description],[ModifiedBy],[CategoryID],[SubCategoryID],[ItemTypeID])
     VALUES (GETDATE(),GETDATE(),1,'Calzado de Seguridad','Manejamos modelos de Calzado de Seguridad de acuerdo para cada uso y necesidad,',1,2,1,1)
GO

PRINT 'Item table done...';

PRINT 'Insert data into the Migration table...';
INSERT INTO [ETL].[TableMigration]([TableName]
								  ,[LatestChange])
VALUES ('Employee',0)
	  ,('Training',0)
	  ,('Project',0)
	  ,('Item',0)
	  ,('Eventuality',0);
PRINT 'Migration table done...';
COMMIT TRANSACTION;