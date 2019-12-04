WITH CTE(CustomerName, CustomerID, TotalPurchase)

AS (

	SELECT
		C.CustomerName,
		C.CustomerID,
		COUNT(SI.UnitPrice) AS TotalPurchase
		FROM FoodNStuff.Customer C INNER JOIN FoodNStuff.Sales S ON S.CustomerID = C.CustomerID	
			INNER JOIN FoodNStuff.SaleItem SI ON SI.SalesID = S.SalesID
		WHERE MONTH(S.PurchaseOn) = $
		GROUP BY C.CustomerID, C.CustomerName
		

	)
	
SELECT TOP 10 PERCENT CTE.CustomerID, CTE.CustomerName, CTE.TotalPurchase
FROM CTE 
ORDER BY TotalPurchase;