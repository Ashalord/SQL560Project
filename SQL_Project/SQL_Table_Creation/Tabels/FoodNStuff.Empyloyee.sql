IF OBJECT_ID(N'FoodNStuff.Employee') IS NULL
BEGIN
   create table FoodNStuff.Employee
(
	EmployeeID int not null identity(1,1) primary key,
	EmployeeName nvarchar(32) not null,
	StartDate DATETIMEOFFSET not null,
	TerminationDate DATETIMEOFFSET,
	JobTypeID int not null Foreign key
		references FoodNStuff.JobType(JobTypeID),

);
END;