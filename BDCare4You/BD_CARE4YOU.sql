/******************************************************************************
**  Name: Script SQL Data Base "Care4You"
**
**  Authors:	Boris Omar Pérez Santos
**				Alain Quinonez
**				Veruzka Onofre
**				Ricardo Veizaga
**				
**  Date: 02/05/2019
*******************************************************************************
**                            Change History
*******************************************************************************
**   Date:          Author:                         Description:
** --------     -------------     ---------------------------------------------
** 02/05/2019   Boris Perez			 Initial version
** 02/05/2018	Ricardo Veizaga		 Create table Contract and type_contract
** 02/05/2018   Veruzka Onofre       Adding employee table
** 02/05/2018   Alain Quinonez       Adding Project and PorjectArea table
** 02/06/2018   Boris Perez			 Adding Item, ItemType, Category and SUbCategory table
** 02/06/2018	Alain Quinonez		 Adding TypeEvent, InjuryType, InjuryPart and Eventuality tables
*******************************************************************************/

USE Care4You
GO

IF NOT EXISTS ( SELECT  *
                FROM    sys.schemas
                WHERE   name = N'ETL' ) 
    EXEC('CREATE SCHEMA [ETL] AUTHORIZATION [dbo]');
GO
/******************************************************************************
 ******************************************************************************
 **							TABLES CREATIONS								 **
 ******************************************************************************
 ******************************************************************************/

/******************************************************************************
 **							Creating the Employee Table						 **
 **							Autor: Boris Perez								 **
 ******************************************************************************/
 
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
PRINT 'Creating the Employee table....';

IF NOT EXISTS (SELECT 1 FROM sys.objects 
		       WHERE object_id = OBJECT_ID(N'[dbo].[Employee]') 
		       AND type in (N'U'))
 BEGIN
CREATE TABLE [dbo].[Employee](
	[Id] INT IDENTITY(1,1) NOT NULL,
	[Dni] VARCHAR(15) NOT NULL,
	[First_Name] VARCHAR(50) NOT NULL,
	[Last_Name] VARCHAR(50) NOT NULL,
	[Address] VARCHAR(50) NOT NULL,
	[Phone] INT NOT NULL,
	[email] VARCHAR(50) NOT NULL,
	[Job_Description] VARCHAR (50) NULL,
	[Job_Position] VARCHAR(50) NULL,
	[CreatedBy] INT NOT NULL CONSTRAINT [DF_Employee_CreatedBy]  DEFAULT ((100)),
	[CreatedDate] DATETIME NOT NULL CONSTRAINT [DF_Employee_CreatedDate]  DEFAULT (getutcdate()),
	[ModifiedBy] INT NOT NULL CONSTRAINT [DF_Employee_ModifiedBy]  DEFAULT ((100)),
	[ModifiedDate] DATETIME NOT NULL CONSTRAINT [DF_Employee_ModifiedDate]  DEFAULT (getutcdate()),
	[Rowversion] TIMESTAMP NOT NULL,

 CONSTRAINT [PK_IdEmployee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
 	
	PRINT 'Table Employee created!';
	END
 ELSE 
	BEGIN
		PRINT 'Table Employee already exists into the database';
	END
GO
SET ANSI_PADDING OFF
GO

/******************************************************************************
 **							Creating the Assignment Table					 **
 **							Autor: Alain Quinonez							 **
 ******************************************************************************/
 SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
PRINT 'Creating the Assignment table....';

IF NOT EXISTS (SELECT 1 FROM sys.objects 
		       WHERE object_id = OBJECT_ID(N'[dbo].[Assignment]') 
		       AND type in (N'U'))
 BEGIN
CREATE TABLE [dbo].[Assignment](
	[IdAssignment] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[EmployeeId] [int] NOT NULL,
	[Rowversion] TIMESTAMP NOT NULL,
 CONSTRAINT [PK_Assignment] PRIMARY KEY CLUSTERED 
(
	[IdAssignment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

	 	PRINT 'Table Assignment created!';
	END
 ELSE 
	BEGIN
		PRINT 'Table Assignment already exists into the database';
	END
GO
SET ANSI_PADDING OFF
GO
 
/******************************************************************************
 **							Creating the Role table							 **
 **							Autor: Alain Quinonez							 **
 ******************************************************************************/
PRINT 'Creating the Role table....';
IF NOT EXISTS (SELECT 1 FROM sys.objects
		       WHERE object_id = OBJECT_ID(N'[dbo].[Role]')
		       AND type in (N'U'))
	BEGIN
		CREATE TABLE [dbo].[Role](
								  Id INT IDENTITY(1,1) NOT NULL
								  ,[create_On] DATETIME CONSTRAINT DF_Create_OnRole DEFAULT GETDATE()
								  ,[update_On] DATETIME
								  ,[version] INT CONSTRAINT DF_VersionRole DEFAULT 0
								  ,[code] VARCHAR(10) CONSTRAINT NN_CodeRole NOT NULL
								  ,[description] VARCHAR(150) CONSTRAINT NN_DescriptionRole NOT NULL
								  ,[ModifiedBy] INT NOT NULL CONSTRAINT DF_ModifiedByRole  DEFAULT (100)
								  ,[Rowversion] TIMESTAMP NOT NULL
								  ,CONSTRAINT PK_Role PRIMARY KEY(Id ASC)
								  );
		PRINT 'Table Role created!';
	END
ELSE
	BEGIN
		PRINT 'Table Role already exists into the database';
	END
GO

/******************************************************************************
 **							Creating the Position table						 **
 **							Autor: Ricardo Veizaga							 **
 ******************************************************************************/
PRINT 'Creating the Position table....';
IF NOT EXISTS (SELECT 1 FROM sys.objects
		       WHERE object_id = OBJECT_ID(N'[dbo].[Position]')
		       AND type in (N'U'))
	BEGIN
		CREATE TABLE [dbo].[Position](
									  Id INT IDENTITY(1,1) NOT NULL
									  ,[create_On] DATETIME CONSTRAINT DF_Create_OnPosition DEFAULT GETDATE()
									  ,[update_On] DATETIME
									  ,[version] INT CONSTRAINT DF_VersionPosition DEFAULT 0
									  ,[name] VARCHAR(30) CONSTRAINT NN_NamePosition NOT NULL
									  ,[role_id] INT NOT NULL
									  ,[ModifiedBy] INT NOT NULL CONSTRAINT DF_ModifiedByPosition  DEFAULT (100)
									  ,[Rowversion] TIMESTAMP NOT NULL
									  ,CONSTRAINT PK_Position PRIMARY KEY(Id ASC)
									  );
		PRINT 'Table Position created!';
	END
ELSE
	BEGIN
		PRINT 'Table Position already exists into the database';
	END
GO

/******************************************************************************
 **							Creating the Area table							 **
 **							Autor: Veruzka Onofre							 **
 ******************************************************************************/
PRINT 'Creating the Area table....';
IF NOT EXISTS (SELECT 1 FROM sys.objects
		       WHERE object_id = OBJECT_ID(N'[dbo].[Area]')
		       AND type in (N'U'))
	BEGIN
		CREATE TABLE [dbo].[Area](
								  Id INT IDENTITY(1,1) NOT NULL
								  ,[create_On] DATETIME CONSTRAINT DF_Create_OnArea DEFAULT GETDATE()
								  ,[update_On] DATETIME
								  ,[version] INT CONSTRAINT DF_VersionArea DEFAULT 0
								  ,[code] VARCHAR(10) CONSTRAINT NN_CodeArea NOT NULL
								  ,[name] VARCHAR(30) CONSTRAINT NN_NameArea NOT NULL
								  ,[ModifiedBy] INT NOT NULL CONSTRAINT DF_ModifiedByArea  DEFAULT (100)
								  ,[Rowversion] TIMESTAMP NOT NULL
								  ,CONSTRAINT PK_Area PRIMARY KEY(Id ASC)
								  );
		PRINT 'Table Area created!';
	END
ELSE
	BEGIN
		PRINT 'Table Area already exists into the database';
	END
GO

/******************************************************************************
 **							Creating the Training table						 **
 **							Autor: Veruzka Onofre							 **
 ******************************************************************************/
PRINT 'Creating the Training table....';
IF NOT EXISTS (SELECT 1 FROM sys.objects
		       WHERE object_id = OBJECT_ID(N'[dbo].[Training]')
		       AND type in (N'U'))
	BEGIN
		CREATE TABLE [dbo].[Training](
									  Id INT IDENTITY(1,1) NOT NULL
									  ,[create_On] DATETIME CONSTRAINT DF_Create_OnTraining DEFAULT GETDATE()
									  ,[update_On] DATETIME
									  ,[version] INT CONSTRAINT DF_VersionTraining DEFAULT 0
									  ,[code] VARCHAR(10) CONSTRAINT NN_CodeTraining NOT NULL
									  ,[name] VARCHAR(50) CONSTRAINT NN_NameTraining NOT NULL
									  ,[instructor] VARCHAR(50) CONSTRAINT NN_InstructorTraining NOT NULL
									  ,[area_id] INT NOT NULL
									  ,[ModifiedBy] INT NOT NULL CONSTRAINT DF_ModifiedByTraining  DEFAULT (100)
									  ,[Rowversion] TIMESTAMP NOT NULL
									  ,CONSTRAINT PK_Training PRIMARY KEY(Id ASC)
									  );
		PRINT 'Table Training created!';
	END
ELSE
	BEGIN
		PRINT 'Table Training already exists into the database';
	END
GO

/******************************************************************************
 **							Creating the Employee_Training table			 **
 **							Autor: Ricardo Veizaga							 **
 ******************************************************************************/
PRINT 'Creating the Employee_Training table....';
IF NOT EXISTS (SELECT 1 FROM sys.objects
		       WHERE object_id = OBJECT_ID(N'[dbo].[Employee_Training]')
		       AND type in (N'U'))
	BEGIN
		CREATE TABLE [dbo].[Employee_Training](
												Id INT IDENTITY(1,1) NOT NULL
												,[create_On] DATETIME CONSTRAINT DF_Create_OnEmployeeTraining DEFAULT GETDATE()
												,[update_On] DATETIME
												,[version] INT CONSTRAINT DF_VersionEmployeeTraining DEFAULT 0
												,[employee_id] INT NOT NULL
												,[training_id] INT NOT NULL
												,[state] VARCHAR(10) CONSTRAINT DF_StateEmployeeTraining DEFAULT 'ACTIVO'
												,[ModifiedBy] INT NOT NULL CONSTRAINT DF_ModifiedByEmployeeTraining  DEFAULT (100)
												,[Rowversion] TIMESTAMP NOT NULL
												,CONSTRAINT PK_EmployeeTraining PRIMARY KEY(Id ASC)
												);
		PRINT 'Table Employee_Training created!';
	END
ELSE
	BEGIN
		PRINT 'Table Employee_Training already exists into the database';
	END
GO

/******************************************************************************
 **							Creating the AuditHistory table					 **
 **							Autor: Boris Perez								 **
 ******************************************************************************/
PRINT 'Creating the AuditHistory table....';
IF NOT EXISTS (SELECT 1 FROM sys.objects
		       WHERE object_id = OBJECT_ID(N'[dbo].[AuditHistory]')
		       AND type in (N'U'))
	BEGIN
	CREATE TABLE [dbo].[AuditHistory](
									  [AuditHistoryId] INT IDENTITY(1,1) NOT NULL CONSTRAINT [PK_AuditHistory] PRIMARY KEY
									  ,[TableName]		VARCHAR(50) NULL
									  ,[ColumnName]		VARCHAR(50) NULL
									  ,[ID]             INT NULL
									  ,[Date]           DATETIME NULL
									  ,[Oldvalue]       VARCHAR(MAX) NULL
									  ,[NewValue]       VARCHAR(MAX) NULL
									  ,[ModifiedBy]     INT
									  ,[Rowversion] TIMESTAMP NOT NULL
									  );
		PRINT 'Table AuditHistory created!';
	END
ELSE
	BEGIN
		PRINT 'Table AuditHistory already exists into the database';
	END
GO


/******************************************************************************
 **							Creating the TYPE_CONTRACT						 **
 **						    Autor: Ricardo Veizaga				             **
 ******************************************************************************/
PRINT 'Creating the TYPE_CONTRACT table....';
IF NOT EXISTS (SELECT 1 FROM sys.objects
		       WHERE object_id = OBJECT_ID(N'[dbo].[type_contract]')
		       AND type in (N'U'))
 BEGIN
	CREATE TABLE type_contract (
		id 				INT  IDENTITY(1,1) NOT NULL,
		created_on		DATETIME NOT NULL,
		updated_on 		DATETIME,
		version 		INT NOT NULL,
		description		VARCHAR(300) NULL ,
		responsable		VARCHAR(50) NULL ,
		type_contract   VARCHAR(50) NOT NULL,
		[ModifiedBy]     INT,
		[Rowversion] TIMESTAMP NOT NULL,
		CONSTRAINT PK_type_contract PRIMARY KEY (id)
	);

		PRINT 'Table TYPE_CONTRACT created!';
	END
 ELSE
	BEGIN
		PRINT 'Table TYPE_CONTRACT already exists into the database.........';
	END
go

-- »»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»»
--                             Table: contract
--                             Autor: Boris Perez
-- ««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««««

PRINT 'Creating the CONTRACT table....';

IF NOT EXISTS (SELECT 1 FROM sys.objects
		       WHERE object_id = OBJECT_ID(N'[dbo].[contract]')
		       AND type in (N'U'))
 BEGIN
	CREATE TABLE contract (
			id               INT IDENTITY(1,1) NOT NULL ,
			created_on       DATETIME NOT NULL,
			updated_on       DATETIME,
			version          INT CONSTRAINT DF_version_contract DEFAULT 0,
			contract_amount  VARCHAR(9) NOT NULL,
			contract_code    VARCHAR(10) NOT NULL,
			end_date         DATETIME ,
			init_date        DATETIME NOT NULL,
			payment_type     VARCHAR(20) NOT NULL,
			employee_id 	 INT NOT NULL ,    
			position_id  	 INT NOT NULL ,
			project_id       INT NOT NULL ,
			type_contract_id INT NOT NULL,
			ModifiedBy INT,
			[Rowversion] TIMESTAMP NOT NULL,
			CONSTRAINT PK_contract PRIMARY KEY (id)
	);
	
		PRINT 'Table CONTRACT created!';
	END
 ELSE
	BEGIN
		PRINT 'Table CONTRACT already exists into the database.........';
	END
go

/******************************************************************************
 **							Creating the "Audit"						     **
 **						    Autor: Ricardo Veizaga				             **
 ******************************************************************************/

PRINT 'Creating the Audit table....';

IF NOT EXISTS (SELECT *
   FROM sys.[objects]
   WHERE Type = 'U'
   AND object_id = OBJECT_ID('dbo.Audit')
)
BEGIN
	CREATE TABLE Audit(
				id INT IDENTITY(1,1) NOT NULL
				,create_On DATETIME CONSTRAINT DF_Create_OnAudit DEFAULT GETDATE()
				,update_On DATETIME
				,version INT CONSTRAINT DF_VersionAudit DEFAULT 0
				,auditName VARCHAR(50) NOT NULL
				,auditCode VARCHAR(50) NOT NULL
				,auditType VARCHAR(10) NOT NULL
				,auditScope VARCHAR(50) NOT NULL
				,auditObjective VARCHAR(50) NOT NULL
				,auditCriteria VARCHAR(50) NOT NULL
				,auditPeriodicity VARCHAR(10) NOT NULL
				,employeeId INT
				,AreaId INT NOT NULL
				,ModifiedBy INT
				,[Rowversion] TIMESTAMP NOT NULL
				CONSTRAINT PK_Audit PRIMARY KEY (id ASC)
	);

	PRINT 'Table Audit created!';
END
ELSE
 BEGIN
  PRINT 'Table Audit already exists into the database.........';
 END
GO

/******************************************************************************
 **							Creating the "SafetyRule"			             **
 **						    Autor: Veruzka Onofre				             **
 ******************************************************************************/
PRINT 'Creating the SafetyRule table....';
IF NOT EXISTS (SELECT *
   FROM sys.[objects]
   WHERE Type = 'U'
   AND object_id = OBJECT_ID('dbo.SafetyRule')
)
BEGIN
	CREATE TABLE SafetyRule(id INT IDENTITY(1,1) NOT NULL
						,create_On DATETIME CONSTRAINT DF_Create_OnSafetyRule DEFAULT GETDATE()
						,update_On DATETIME
						,version INT CONSTRAINT DF_VersionSafetyRule DEFAULT 0
						,accomplishment BIT NOT NULL
						,auditId INT NOT NULL
						,complianceMetric INT NOT NULL
						,complianceParameter INT NOT NULL
						,policyCode VARCHAR(100) NOT NULL
						,policyName VARCHAR(100) NOT NULL
						,ModifiedBy INT
						,[Rowversion] TIMESTAMP NOT NULL
						CONSTRAINT PK_SafetyRule PRIMARY KEY (id ASC)
	);

	PRINT 'Table SafetyRule created!';
END
ELSE
 BEGIN
  PRINT 'Table SafetyRule already exists into the database';
 END
GO


/******************************************************************************
 **							Creating the Project table						 **
 **						    Autor: Boris Perez		                         **
 ******************************************************************************/
 PRINT 'Creating the Project table....';
IF NOT EXISTS (SELECT 1 FROM sys.objects
		       WHERE object_id = OBJECT_ID(N'[dbo].[Project]')
		       AND type in (N'U'))
	BEGIN
		CREATE TABLE [dbo].[Project](id INT IDENTITY(1,1) NOT NULL,
	                                 name VARCHAR(250) NOT NULL,
									 [description] VARCHAR(1000) NULL, 
									 [date_start] DATE not null,
								     [date_end] DATE not null,
									 [createBy] INT NOT NULL CONSTRAINT DF_Project_createdBy DEFAULT (100),
									 [createDate] DATETIME NOT NULL CONSTRAINT DF_Project_createDate DEFAULT GETUTCDATE(),
									 [updatedBy] INT NOT NULL CONSTRAINT DF_Project_updateBy DEFAULT (100),
								     [updateDate] DATETIME NOT NULL CONSTRAINT DF_Project_updateDate DEFAULT GETUTCDATE(),
									 [Rowversion] TIMESTAMP NOT NULL,
									 CONSTRAINT PK_Project PRIMARY KEY(id ASC)
		);
		PRINT 'Table Project created!';
	END
ELSE
	BEGIN
		PRINT 'Table Project already exists into the database';
	END
GO


/******************************************************************************
 **							Creating the ProjectArea table					 **
 **						    Autor: Veruzka Onofre	                         **
 ******************************************************************************/
 PRINT 'Creating the Project_Area table....';
IF NOT EXISTS (SELECT 1 FROM sys.objects
		       WHERE object_id = OBJECT_ID(N'[dbo].[Project_Area]')
		       AND type in (N'U'))
	BEGIN
		CREATE TABLE Project_Area(Id INT IDENTITY(1,1) NOT NULL,
		                          project_id INT NOT NULL,
								  area_id INT NOT NULL,
					              estado VARCHAR(50) NOT NULL CHECK (estado IN('En curso', 'Detenido', 'Terminado')),
							      [createBy] INT NOT NULL CONSTRAINT DF_ProjectArea_createdBy DEFAULT (100),
							      [createDate] DATETIME NOT NULL CONSTRAINT DF_ProjectArea_createDate DEFAULT GETUTCDATE(),
								  [updateBy] INT NOT NULL CONSTRAINT DF_ProjectArea_updateBy DEFAULT (100),
								  [updateDate] DATETIME NOT NULL CONSTRAINT DF_ProjectArea_updateDate DEFAULT GETUTCDATE(),
								  [Rowversion] TIMESTAMP NOT NULL,
								  CONSTRAINT PK_ProjectArea PRIMARY KEY(Id ASC)
		);
		PRINT 'Table Project_Area created!';
	END
ELSE
	BEGIN
		PRINT 'Table Project_Area already exists into the database';
	END
GO


/******************************************************************************
 **							Creating the Item table							 **
 **						    Autor: Alain Quinonez	                         **
 ******************************************************************************/
PRINT 'Creating the Item table....';
IF NOT EXISTS (SELECT 1 FROM sys.objects
		       WHERE object_id = OBJECT_ID(N'[dbo].[Item]')
		       AND type in (N'U'))
	BEGIN
		CREATE TABLE [dbo].[Item](
									  Id INT IDENTITY(1,1) NOT NULL
									  ,[create_On] DATETIME CONSTRAINT DF_Create_OnItem DEFAULT GETDATE()
									  ,[update_On] DATETIME
									  ,[version] INT CONSTRAINT DF_VersionItem DEFAULT 0
									  ,[name] VARCHAR(30) CONSTRAINT NN_NameItem NOT NULL
									  ,[description] VARCHAR(500) CONSTRAINT NN_ItemDescription NOT NULL
									  ,[ModifiedBy] INT
									  ,[Rowversion] TIMESTAMP NOT NULL
									  ,[CategoryID] INT
									  ,[SubCategoryID] INT
									  ,[ItemTypeID] INT
									  ,CONSTRAINT PK_Item PRIMARY KEY(Id ASC)
									  );
		PRINT 'Table Item created!';
	END
ELSE
	BEGIN
		PRINT 'Table Item already exists into the database';
	END
GO
/******************************************************************************
 **							Creating the ItemType table						 **
 **						    Autor: Ricardo Veizaga	                         **
 ******************************************************************************/
PRINT 'Creating the ItemType table....';
IF NOT EXISTS (SELECT 1 FROM sys.objects
		       WHERE object_id = OBJECT_ID(N'[dbo].[ItemType]')
		       AND type in (N'U'))
	BEGIN
		CREATE TABLE [dbo].[ItemType](
									  Id INT IDENTITY(1,1) NOT NULL
									  ,[create_On] DATETIME CONSTRAINT DF_Create_OnItemType DEFAULT GETDATE()
									  ,[update_On] DATETIME
									  ,[version] INT CONSTRAINT DF_VersionItemType DEFAULT 0
									  ,[name] VARCHAR(30) CONSTRAINT NN_NameItemType NOT NULL
									  ,[description] VARCHAR(500) CONSTRAINT NN_ItemTypeDescription NOT NULL
									  ,[ModifiedBy] INT
									  ,[Rowversion] TIMESTAMP NOT NULL
									  ,CONSTRAINT PK_ItemType PRIMARY KEY(Id ASC)
									  );
		PRINT 'Table ItemType created!';
	END
ELSE
	BEGIN
		PRINT 'Table ItemType already exists into the database';
	END
GO
/******************************************************************************
 **							Creating the Category table						 **
 **						    Autor: Boris Perez	                         **
 ******************************************************************************/

PRINT 'Creating the Category table....';
IF NOT EXISTS (SELECT 1 FROM sys.objects
		       WHERE object_id = OBJECT_ID(N'[dbo].[Category]')
		       AND type in (N'U'))
	BEGIN
		CREATE TABLE [dbo].[Category](
									  Id INT IDENTITY(1,1) NOT NULL
									  ,[create_On] DATETIME CONSTRAINT DF_Create_OnCategory DEFAULT GETDATE()
									  ,[update_On] DATETIME
									  ,[version] INT CONSTRAINT DF_VersionCategory DEFAULT 0
									  ,[name] VARCHAR(30) CONSTRAINT NN_NameCategory NOT NULL
									  ,[description] VARCHAR(500) CONSTRAINT NN_CategoryDescription NOT NULL
									  ,[Rowversion] TIMESTAMP NOT NULL
									  ,[SubCategoryID] INT 
									  ,CONSTRAINT PK_Category PRIMARY KEY(Id ASC)
									  );
		PRINT 'Table Category created!';
	END
ELSE
	BEGIN
		PRINT 'Table Category already exists into the database';
	END
GO

/******************************************************************************
 **							Creating the Sub-Category table					 **
 **						    Autor: Alain Quinonez	                         **
 ******************************************************************************/
PRINT 'Creating the Sub-Category table....';
IF NOT EXISTS (SELECT 1 FROM sys.objects
		       WHERE object_id = OBJECT_ID(N'[dbo].[SubCategory]')
		       AND type in (N'U'))
	BEGIN
		CREATE TABLE [dbo].[SubCategory](
									  Id INT IDENTITY(1,1) NOT NULL
									  ,[create_On] DATETIME CONSTRAINT DF_Create_OnSubCategory DEFAULT GETDATE()
									  ,[update_On] DATETIME
									  ,[version] INT CONSTRAINT DF_VersionSubCategory DEFAULT 0
									  ,[name] VARCHAR(30) CONSTRAINT NN_NameSubCategory NOT NULL
									  ,[CategoryID] INT
									  ,[description] VARCHAR(500) CONSTRAINT NN_SubCategoryDescription NOT NULL
									  ,[Rowversion] TIMESTAMP NOT NULL
									  ,CONSTRAINT PK_SubCategory PRIMARY KEY(Id ASC)
									  );
		PRINT 'Table Sub-Category created!';
	END
ELSE
	BEGIN
		PRINT 'Table Sub-Category already exists into the database';
	END
GO

/******************************************************************************
**							Creating the TypeEvent table					 **
**							Autor: Veruzka Onofre							 **
*******************************************************************************/
PRINT 'Creating the TypeEvent table....';

IF NOT EXISTS (SELECT 1 FROM sys.objects
				WHERE object_id = OBJECT_ID(N'[dbo].[TypeEvent]')
				AND TYPE in (N'U'))
BEGIN
	CREATE TABLE TypeEvent(id INT NOT NULL IDENTITY(1,1)
							,created_on DATE NOT NULL
							,updated_on DATE NULL DEFAULT NULL
							,[Rowversion] TIMESTAMP NOT NULL
							,typeEvent VARCHAR(10) NOT NULL
							CONSTRAINT PK_TypeEvent PRIMARY KEY (id));
	PRINT 'Table TypeEvent created';
END
ELSE
BEGIN
	PRINT 'Table TypeEvent already exists into the database';
END
GO

/******************************************************************************
**							Creating the InjuryType table					 **
**							Autor: Boris Perez							 **
*******************************************************************************/
PRINT 'Creating the InjuryType table....';

IF NOT EXISTS (SELECT 1 FROM sys.objects
				WHERE object_id = OBJECT_ID(N'[dbo].[InjuryType]')
				AND TYPE in (N'U'))
BEGIN
	CREATE TABLE InjuryType(id INT NOT NULL IDENTITY(1,1)
							,created_on DATE NOT NULL
							,updated_on DATE NULL DEFAULT NULL
							,[Rowversion] TIMESTAMP NOT NULL
							,injuryType VARCHAR(50) NOT NULL
							CONSTRAINT PK_InjuryType PRIMARY KEY (id));
	PRINT 'Table InjuryType created';
END
ELSE
BEGIN
	PRINT 'Table InjuryType already exists into the database';
END
GO

/******************************************************************************
**							Creating the InjuryPart table					 **
**							Autor: Alain Quinonez							 **
*******************************************************************************/
PRINT 'Creating the InjuryPart table....';

IF NOT EXISTS (SELECT 1 FROM sys.objects
				WHERE object_id = OBJECT_ID(N'[dbo].[InjuryPart]')
				AND TYPE in (N'U'))
BEGIN
	CREATE TABLE InjuryPart(id INT NOT NULL IDENTITY(1,1)
							,created_on DATE NOT NULL
							,updated_on DATE NULL DEFAULT NULL
							,[Rowversion] TIMESTAMP NOT NULL
							,injuryPart VARCHAR(50) NOT NULL
							CONSTRAINT PK_InjuryPart PRIMARY KEY (id));
	PRINT 'Table InjuryPart created';
END
ELSE
BEGIN
	PRINT 'Table InjuryPart already exists into the database';
END
GO

/******************************************************************************
 **							Creating the Eventuality table					 **
							Autor: Ricardo Veizaga
 ******************************************************************************/
PRINT 'Creating the Eventuality table....';

IF NOT EXISTS (SELECT 1 FROM sys.objects
				WHERE object_id = OBJECT_ID(N'[dbo].[Eventuality]')
				AND TYPE in (N'U'))
BEGIN
	CREATE TABLE Eventuality(id INT NOT NULL IDENTITY(1,1)
							,created_on DATE NOT NULL
							,updated_on DATE NULL DEFAULT NULL
							,[Rowversion] TIMESTAMP NOT NULL
							,dateEvent DATE NOT NULL
							,[description] VARCHAR(250)
							,typeEvent_id INT NOT NULL
							,injuryType_id INT NOT NULL
							,injuryPart_id INT NOT NULL
							,employee_id INT NOT NULL
							,projectArea_id INT NOT NULL
							CONSTRAINT PK_eventuality PRIMARY KEY (id));
	PRINT 'Table Eventuality created';
END
ELSE
BEGIN
	PRINT 'Table Eventuality already exists into the database';
END
GO

/******************************************************************************
 **							Creating the TableMigration table				 **
 **						    Autor: Alain Quinonez	                         **
 ******************************************************************************/
PRINT 'Creating the TableMigration table....';
IF NOT EXISTS (SELECT 1 FROM sys.objects
		       WHERE object_id = OBJECT_ID(N'[ETL].[TableMigration]')
		       AND type in (N'U'))
	BEGIN
		CREATE TABLE [ETL].[TableMigration](
											[IDMigration] INT IDENTITY(1,1) NOT NULL
											,[TableName] VARCHAR(50) NOT NULL
											,[LatestChange] BIGINT NOT NULL CONSTRAINT [DF_Migration]  DEFAULT ((0))
											,CONSTRAINT [PK_Migration] PRIMARY KEY CLUSTERED ([IDMigration] ASC)
											WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF
											,IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
											) ON [PRIMARY];
		PRINT 'Table TableMigration created!';
	END
ELSE
	BEGIN
		PRINT 'TableMigration already exists into the database';
	END
GO

/******************************************************************************
 ******************************************************************************
 **							CREATING THE FORIGN KEY							 **
 ******************************************************************************
 ******************************************************************************/

/******************************************************************************
 **			Define the relationship between Assigment and Employee.  		 **
 ******************************************************************************/
 IF NOT EXISTS (SELECT * 
           FROM sys.foreign_keys 
           WHERE object_id = OBJECT_ID(N'[dbo].[FK_Assignment_Employee]') 
             AND parent_object_id = OBJECT_ID(N'[dbo].[Assignment]'))
	BEGIN

		ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD  CONSTRAINT [FK_Assignment_Employee] FOREIGN KEY([EmployeeId])
		REFERENCES [dbo].[Employee] ([Id])
    	ALTER TABLE [dbo].[Assignment] CHECK CONSTRAINT [FK_Assignment_Employee]
	END
GO

/******************************************************************************
 **			Define the relationship between Position and Role.  			 **
 ******************************************************************************/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_Position_Role]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Position]'))
ALTER TABLE [dbo].[Position]  WITH CHECK ADD
			CONSTRAINT FK_Position_Role FOREIGN KEY (role_id)
			REFERENCES [dbo].[Role](Id)
GO
ALTER TABLE [dbo].[Position] CHECK
			CONSTRAINT [FK_Position_Role]
GO

/******************************************************************************
 **			Define the relationship between Training and Area.  			 **
 ******************************************************************************/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_Training_Area]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Training]'))
ALTER TABLE [dbo].[Training]  WITH CHECK ADD
			CONSTRAINT FK_Training_Area FOREIGN KEY (area_id)
			REFERENCES [dbo].[Area](Id)
GO
ALTER TABLE [dbo].[Training] CHECK
			CONSTRAINT [FK_Training_Area]
GO

/******************************************************************************
 **		 Define the relationship between Employee_Training and Training.	 **
 ******************************************************************************/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeTraining_Training]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Employee_Training]'))
ALTER TABLE [dbo].[Employee_Training]  WITH CHECK ADD
			CONSTRAINT FK_EmployeeTraining_Training FOREIGN KEY (training_id)
			REFERENCES [dbo].[Training](Id)
GO
ALTER TABLE [dbo].[Employee_Training] CHECK
			CONSTRAINT [FK_EmployeeTraining_Training]
GO

/******************************************************************************
 **		 Define the relationship between Employee_Training and Employee.	 **
 ******************************************************************************/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_EmployeeTraining_Employee]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Employee_Training]'))
ALTER TABLE [dbo].[Employee_Training]  WITH CHECK ADD
			CONSTRAINT FK_EmployeeTraining_Employee FOREIGN KEY (employee_id)
			REFERENCES [dbo].[Employee](Id)
GO
ALTER TABLE [dbo].[Employee_Training] CHECK
			CONSTRAINT [FK_EmployeeTraining_Employee]
GO

/******************************************************************************
 **		 Define the relationship between CONTRACT y TYPE_CONTRACT.			 **
 ******************************************************************************/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys 
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_type_contract_contract]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[contract]'))
	   
ALTER TABLE [dbo].[contract]  WITH CHECK ADD  
       CONSTRAINT [FK_type_contract_contract] FOREIGN KEY([type_contract_id])
REFERENCES [dbo].[type_contract] (id)

GO
ALTER TABLE [dbo].[contract] CHECK 
       CONSTRAINT [FK_type_contract_contract]
GO

/******************************************************************************
 **		 Define the relationship between CONTRACT y EMPLOYEE.				 **
 ******************************************************************************/
 IF NOT EXISTS (SELECT * FROM sys.foreign_keys 
        WHERE object_id = OBJECT_ID(N'[dbo].[FK_employee_contract]')
        AND parent_object_id = OBJECT_ID(N'[dbo].[contract]'))
	   
ALTER TABLE [dbo].[contract]  WITH CHECK ADD  
        CONSTRAINT [FK_employee_contract] FOREIGN KEY([employee_id])
REFERENCES [dbo].[employee] ([id])

 GO
 ALTER TABLE [dbo].[contract] CHECK 
        CONSTRAINT [FK_employee_contract]
 GO

/******************************************************************************
 **		 Define the relationship between CONTRACT y POSITION.				 **
 ******************************************************************************/
 IF NOT EXISTS (SELECT * FROM sys.foreign_keys 
        WHERE object_id = OBJECT_ID(N'[dbo].[FK_position_contract]')
        AND parent_object_id = OBJECT_ID(N'[dbo].[contract]'))
	   
 ALTER TABLE [dbo].[contract]  WITH CHECK ADD  
        CONSTRAINT [FK_position_contract] FOREIGN KEY([position_id])
 REFERENCES [dbo].[position] ([id])

 GO
 ALTER TABLE [dbo].[contract] CHECK 
        CONSTRAINT [FK_position_contract]
 GO

/******************************************************************************
 **		 Define the relationship between CONTRACT y PROJECT.				 **
 ******************************************************************************/
 IF NOT EXISTS (SELECT * FROM sys.foreign_keys 
        WHERE object_id = OBJECT_ID(N'[dbo].[FK_project_contract]')
        AND parent_object_id = OBJECT_ID(N'[dbo].[contract]'))
	   
 ALTER TABLE [dbo].[contract]  WITH CHECK ADD  
        CONSTRAINT [FK_project_contract] FOREIGN KEY([project_id])
 REFERENCES [dbo].[project] ([id])

 GO
 ALTER TABLE [dbo].[contract] CHECK 
        CONSTRAINT [FK_project_contract]
 GO

/******************************************************************************
 **		 Define the relationship between Audit y Area.						 **
 ******************************************************************************/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_Audit_Area]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Audit]'))
	ALTER TABLE [dbo].[Audit]  WITH CHECK ADD CONSTRAINT [FK_Audit_Area] FOREIGN KEY(areaId)
	REFERENCES [dbo].[Area] (id)
GO
	ALTER TABLE [dbo].[Audit] CHECK CONSTRAINT [FK_Audit_Area]
GO

/******************************************************************************
 **		 Define the relationship between Audit y Employee.					 **
 ******************************************************************************/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_Audit_Employee]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Audit]'))
	ALTER TABLE [dbo].[Audit]  WITH CHECK ADD CONSTRAINT [FK_Audit_Employee] FOREIGN KEY(employeeId)
	REFERENCES [dbo].[Employee] (id)
GO
	ALTER TABLE [dbo].[Audit] CHECK CONSTRAINT [FK_Audit_Employee]
GO

/******************************************************************************
 **		 Define the relationship between SafetyRule y Audit.				 **
 ******************************************************************************/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_SafetyRule_Audit]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[SafetyRule]'))
	ALTER TABLE [dbo].[SafetyRule]  WITH CHECK ADD CONSTRAINT [FK_SafetyRule_Audit] FOREIGN KEY(auditId)
	REFERENCES [dbo].[Audit] (id)
GO
	ALTER TABLE [dbo].[SafetyRule] CHECK CONSTRAINT [FK_SafetyRule_Audit]
GO

/******************************************************************************
 **			Define the relationship between Project and ProjectArea.  		 **
 ******************************************************************************/
 IF NOT EXISTS (SELECT * FROM sys.foreign_keys
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_Project_ProjectArea]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Project_Area]'))
ALTER TABLE Project_Area WITH CHECK ADD CONSTRAINT [FK_Project_ProjectArea] 
FOREIGN KEY (project_id) REFERENCES project([Id]);
GO
ALTER TABLE [dbo].[Project_Area] CHECK CONSTRAINT [FK_Project_ProjectArea]
GO

/******************************************************************************
 **			Define the relationship between Area and ProjectArea.  			 **
 ******************************************************************************/
 IF NOT EXISTS (SELECT * FROM sys.foreign_keys
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_Area_ProjectArea]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Project_Area]'))
ALTER TABLE Project_Area WITH CHECK ADD CONSTRAINT [FK_Area_ProjectArea]
 FOREIGN KEY (area_id) REFERENCES Area([Id]);
GO
ALTER TABLE [dbo].[Project_Area] CHECK CONSTRAINT [FK_Area_ProjectArea]
GO

/******************************************************************************
 **			Define the relationship between TypeEvent and Eventuality. 		 **
 ******************************************************************************/
  IF NOT EXISTS (SELECT * FROM sys.foreign_keys
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_TypeEvent_Eventuality]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Eventuality]'))
ALTER TABLE [dbo].[Eventuality] WITH CHECK ADD CONSTRAINT [FK_TypeEvent_Eventuality]
 FOREIGN KEY (typeEvent_id) REFERENCES [dbo].[TypeEvent](Id);
GO
ALTER TABLE [dbo].[Eventuality] CHECK CONSTRAINT [FK_TypeEvent_Eventuality]
GO

/******************************************************************************
 **			Define the relationship between InjuryType and Eventuality.		 **
 ******************************************************************************/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_InjuryType_Eventuality]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Eventuality]'))
ALTER TABLE [dbo].[Eventuality] WITH CHECK ADD CONSTRAINT [FK_InjuryType_Eventuality]
 FOREIGN KEY (injuryType_id) REFERENCES [dbo].[InjuryType](Id);
GO
ALTER TABLE [dbo].[Eventuality] CHECK CONSTRAINT [FK_InjuryType_Eventuality]
GO

/******************************************************************************
 **			Define the relationship between InjuryPart and Eventuality.		 **
 ******************************************************************************/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_InjuryPart_Eventuality]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Eventuality]'))
ALTER TABLE [dbo].[Eventuality]  WITH CHECK ADD
			CONSTRAINT FK_InjuryPart_Eventuality FOREIGN KEY (injuryPart_id)
			REFERENCES [dbo].[InjuryPart](Id)
GO
ALTER TABLE [dbo].[Eventuality] CHECK
			CONSTRAINT [FK_InjuryPart_Eventuality]
GO

/******************************************************************************
 **			Define the relationship between Employee and Eventuality.  		 **
 ******************************************************************************/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_Employee_Eventuality]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Eventuality]'))
ALTER TABLE [dbo].[Eventuality]  WITH CHECK ADD
			CONSTRAINT FK_Employee_Eventuality FOREIGN KEY (employee_id)
			REFERENCES [dbo].[Employee](Id)
GO
ALTER TABLE [dbo].[Eventuality] CHECK
			CONSTRAINT [FK_Employee_Eventuality]
GO

/******************************************************************************
 **			Define the relationship between Project_Area and Eventuality. 	 **
 ******************************************************************************/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_ProjectArea_Eventuality]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Eventuality]'))
ALTER TABLE [dbo].[Eventuality]  WITH CHECK ADD
			CONSTRAINT FK_ProjectArea_Eventuality FOREIGN KEY (projectArea_id)
			REFERENCES [dbo].[Project_Area](Id)
GO
ALTER TABLE [dbo].[Eventuality] CHECK
			CONSTRAINT [FK_ProjectArea_Eventuality]
GO

/******************************************************************************
 **			Define the relationship between Item and ItemType. 	 **
 ******************************************************************************/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_Item_ItemType]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Item]'))
ALTER TABLE [dbo].[Item]  WITH CHECK ADD
			CONSTRAINT FK_Item_ItemType FOREIGN KEY ([ItemTypeID])
			REFERENCES [dbo].[ItemType] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK
			CONSTRAINT [FK_Item_ItemType]
GO

/******************************************************************************
 **			Define the relationship between Item and Category. 	 **
 ******************************************************************************/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_Item_Category]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Item]'))
ALTER TABLE [dbo].[Item]  WITH CHECK ADD
  CONSTRAINT [FK_Item_Category] FOREIGN KEY([CategoryID])
  REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK
			CONSTRAINT [FK_Item_Category]
GO

/******************************************************************************
 **			Define the relationship between Item and SubCategory. 	 **
 ******************************************************************************/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_Item_SubCategory]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Item]'))
ALTER TABLE [dbo].[Item]  WITH CHECK ADD
      CONSTRAINT [FK_Item_SubCategory] FOREIGN KEY([SubCategoryID])
      REFERENCES [dbo].[SubCategory] ([Id])
GO
ALTER TABLE [dbo].[Item] CHECK
			CONSTRAINT [FK_Item_SubCategory]
GO

/******************************************************************************
 **			Define the relationship between  Assignment and Item. 	 **
 ******************************************************************************/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_Assignment_Item]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Assignment]'))
ALTER TABLE [dbo].[Assignment]  WITH CHECK ADD
      CONSTRAINT [FK_Assignment_Item] FOREIGN KEY([ItemId])
      REFERENCES [dbo].[Item] ([Id])
GO
ALTER TABLE [dbo].[Assignment] CHECK
    CONSTRAINT [FK_Assignment_Item]
GO


/******************************************************************************
 **			Define the relationship between  Category and SubCategory. 	 **
 ******************************************************************************/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys
       WHERE object_id = OBJECT_ID(N'[dbo].[FK_Category_SubCategory]')
       AND parent_object_id = OBJECT_ID(N'[dbo].[Category]'))
ALTER TABLE [dbo].[Category]  WITH CHECK ADD
      CONSTRAINT [FK_Category_SubCategory] FOREIGN KEY([SubCategoryID])
      REFERENCES [dbo].[SubCategory] ([Id])
GO
ALTER TABLE [dbo].[Category] CHECK
    CONSTRAINT [FK_Category_SubCategory]
GO