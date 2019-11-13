IF OBJECT_ID(N'FoodNStuff.SaleItem') IS NULL
BEGIN
   create table FoodNStuff.SaleItem(
	SaleItemID int not null identity(1,1) primary key,
	SalesID int not null foreign key
		references FoodNStuff.Sales(SalesID),
	InventoryID int not null foreign key
		references FoodNStuff.Inventory(InventoryID),
	Quantity int not null,
	UnitPrice decimal not null,

	unique(SalesID, InventoryID)

);
END;