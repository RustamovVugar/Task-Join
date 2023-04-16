create database Shop

create table Products(
[Id] int primary key identity(1,1),
[Name] nvarchar(50),
[Count] decimal,
[Price] Decimal
)

create table Categories(
[Id] int primary key identity(1,1),
[Name] nvarchar(50),
[CategoryId] int foreign key references Categories(Id)
)

select * from Products

select * from Categories 

select* from  Products co
inner join Categories ct
on co.Id = ct.Id

select co.name as 'Product',ct.name as 'Category' from Products co
inner join  Categories ct
on co.Id = ct.ProductId

select co.name as 'Product',ct.name as 'Category' from Products co
left join  Categories ct
on co.Id = ct.ProductId

select co.name as 'Product',ct.name as 'Category' from Products co
right join  Categories ct
on co.Id = ct.ProductId

select co.name as 'Product',ct.name as 'Category' from Products co
full outer  Categories ct
on co.Id = ct.ProductId



create table Roles(
[Id] int primary key identity(1,1),
[Name] nvarchar(50)
)

create table Users(
[Id] int primary key identity(1,1),
[Name] nvarchar(50)
)

create table UserRoles(
[Id] int primary key identity (1,1),
[UserId] int foreign key references Users(Id),
[RoleId] int foreign key references Roles(Id)
)

select * from Roles

select *from Users

select * from UserRoles

select co.Name as 'Name', ct.Name as 'Role' from Users co
inner join UserRoles cr
on co.Id = cr.UserId
inner join Roles ct
on ct.Id = cr.RoleId