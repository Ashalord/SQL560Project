IF OBJECT_ID(N'FoodNStuff.Customer') IS NULL
BEGIN
   Create table FoodNStuff.Customer(
	CustomerID int not null identity(1,1) primary key,
	CustomerName nvarchar(32) not null,
	CardNumber int not null unique
);
END