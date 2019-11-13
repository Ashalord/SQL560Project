IF OBJECT_ID(N'FoodNStuff.Product') IS NULL
BEGIN
   create table FoodNStuff.Product(
	ProductID int not null identity(1,1) primary key,
	ProductType nvarchar(1) not null,
	[Name] nvarchar(32),

	unique(ProductID)
);
END;