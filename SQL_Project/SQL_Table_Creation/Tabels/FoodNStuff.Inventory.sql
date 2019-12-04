--Creates a table for inventory with a primary key of Inventory Id a foriegn key of Product Id and 2 unique keys in product Id and Exp Date

IF OBJECT_ID(N'FoodNStuff.Inventory') IS NULL
BEGIN
   	create table FoodNStuff.Inventory(
	InventoryID int not null identity(1,1) primary key,
	StockQuantity int not null,
	ProductID int not null foreign key
		references FoodNStuff.Product(ProductID),
	ExpDate DATETIMEOFFSET not null,

	unique(ProductID, ExpDate)
);
END;
