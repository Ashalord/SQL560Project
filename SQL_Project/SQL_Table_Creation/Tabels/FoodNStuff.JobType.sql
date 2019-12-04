--Creates the table for job type with a primary key of job type id and a unique key of title

IF OBJECT_ID(N'FoodNStuff.JobType') IS NULL
BEGIN
	create table FoodNStuff.JobType(
	JobTypeID INT not null Identity(1,1) Primary Key,
	Title nvarchar(32) not null,
	StartingPayPerHour decimal,
	IsHiring nvarchar(1) NOT NULL,
	SalaryPerYear Decimal,
	EmployeeType nvarchar(1)

	unique(Title)

);
END;
