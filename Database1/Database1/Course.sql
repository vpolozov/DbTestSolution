CREATE TABLE [dbo].[Course]
(
	[Id] INT NOT NULL IDENTITY (1,1) PRIMARY KEY, 
    [Name] NCHAR(50) NULL, 
    [Teacher] NCHAR(50) NULL
)
