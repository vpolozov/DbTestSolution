CREATE TABLE [dbo].[Marks]
(
    [StudentId] INT NOT NULL, 
    [Mark] SMALLINT NULL, 
    [CourseId] INT NOT NULL, 
    CONSTRAINT [FK_Marks_Students] FOREIGN KEY ([StudentId]) REFERENCES [Student]([Id]), 
    CONSTRAINT [FK_Marks_Course] FOREIGN KEY ([CourseId]) REFERENCES [Course]([Id])
)
