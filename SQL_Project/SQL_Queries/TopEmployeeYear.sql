--query for the top employee of the year. returns the employee with the most sales for the year.

WITH CTE(EmployeeName, EmployeeID, TotalSales) 

AS (

	SELECT 
		E.EmployeeName,
		E.EmployeeID,
		COUNT(SI.UnitPrice) As TotalSales
		FROM FoodNStuff.Employee E INNER JOIN FoodNStuff.Sales S ON S.EmployeeID = E.EmployeeID
		INNER JOIN FoodNStuff.SaleItem SI ON SI.SalesID = S.SalesID
		WHERE YEAR(PurchaseOn) = $
		GROUP BY E.EmployeeID, E.EmployeeName

	)

SELECT TOP 1 CTE.EmployeeName, CTE.EmployeeID, CTE.TotalSales FROM CTE ORDER BY CTE.TotalSales;