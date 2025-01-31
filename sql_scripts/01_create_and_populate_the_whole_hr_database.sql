-- tell the database engine to run commands against the master database
USE master;
GO

-- create a new HR database
CREATE DATABASE HR;
GO

USE HR;
GO

-- create Departments table
CREATE TABLE [dbo].[Departments](
	[DepartmentId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

-- create Employees table
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Salary] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

-- add a Foreign key constraint of 
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Departments_DepartmentId] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Departments] ([DepartmentId])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Departments_DepartmentId]
GO

-- populate Departments table
INSERT INTO Departments
VALUES
	('Sales', 'Sales department'),
	('Logistics', 'Logistics department'),
	('Warehouse', 'Warehouse department');
GO

-- populate Employees table
INSERT INTO Employees
VALUES
	('Caryn', 'Mitchell', 'm.f@protonmail.edu', '1-683-204-3142', 100, 1),
	('Tyler', 'Herring', 'el@google.couk', '(234) 887-3617', 200, 1),
	('Omar', 'Adkins', 'd.m@yahoo.net', '1-517-314-5525', 300, 2),
	('Erich', 'Casey', 'sit@yahoo.couk', '(283) 850-5763', 400, 2),
	('Vanna', 'Herring', 'u.p.c@aol.net', '(346) 556-9451', 500, 3); 
GO