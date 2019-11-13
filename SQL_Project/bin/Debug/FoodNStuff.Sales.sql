IF OBJECT_ID(N'FoodNStuff.Sales') IS NULL
BEGIN
   create table FoodNStuff.Sales(
	SalesID int not null identity(1,1) primary key,
	CustomerID int not null foreign key
		references FoodNStuff.Customer(CustomerID),
	EmployeeID int not null foreign key
		references FoodNStuff.Employee(EmployeeID),
	PurchaseOn DATETIMEOFFSET not null,
);

END;