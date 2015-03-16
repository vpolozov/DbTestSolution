insert into dbo.[Student] ([Id], [Name], [Phone], [Address]) values 
(1, N'Иванов', '1234567',	N'Невский,9'),
(2, N'Петрова',	'2345678',	N'Садовая,21'),
(3, N'Сидоров',	'3456789',	''),
(4, N'Алексеев',	'4567890',	N'Гороховая,2')

GO

insert into dbo.[Course] ([Id], [Name], [Teacher]) values
(1, N'Алгебра', N'Фаддеев'),
(2, N'Геометрия', N'Волков'),
(3, N'Мат.анализ', N'Хавин')

GO

insert into dbo.[Marks] ([StudentId], [Mark], [CourseId]) values
(1,	5,	1),
(1,	3,	2),
(2,	4,	1),
(3,	4,	3)
