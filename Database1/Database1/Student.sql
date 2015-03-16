CREATE TABLE [dbo].[Student]
(
	[Id] INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
	[Name] NCHAR(50) NOT NULL, 
	[Phone] CHAR(20) NULL, 
	[Address] NCHAR(100) NULL
)
