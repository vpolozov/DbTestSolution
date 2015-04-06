--1.	 Имена и телефоны всех студентов.

select [Name], [Phone] from [Student] order by [Name]

--2.	 Количество учебных предметов.

select count(*) as Count from [Course]

--3.	 Номера и фамилии студентов, у которых не указан адрес.

select [Id], [Name] from [Student] where [Address] is null or [Address] = ''

--4.	 Фамилии преподавателей по алгебре и геометрии.

select [Teacher] from [Course] where [Name] = 'Алгебра' or [Name] = 'Геометрия'

--5.	 Фамилии студентов, имеющих отметки по алгебре.

select distinct s.[Name] from [Student] s, [Marks] m, [Course] c
  where c.Id = m.CourseId and s.Id = m.StudentId
    and c.Name = N'Алгебра'

--6.	 Количество пятерок поставленных по геометрии.

select count(*) as Count from [Marks] m, [Course] c
  where c.Name = N'Геометрия' and c.Id = m.CourseId
    and m.Mark = 5 

--7.	 Средний балл каждого из студентов.

select s.Name, avg(m.Mark) from [Student] s, [Marks] m
  where s.Id = m.StudentId
  group by s.Id, s.Name

--8.	 Фамилии отличников.
create index Marks_SM on dbo.[Marks] (StudentID, Mark)

select t.Name from
 (select s.Name, avg(m.Mark) as Average from [Student] s, [Marks] m
  where s.Id = m.StudentId
  group by s.Id, s.Name) t
  where Average = 5

