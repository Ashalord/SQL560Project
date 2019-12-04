--query for the sales for product. Returns how many of the given item was sold.

SELECT P.[Name], P.ProductID, COUNT(SI.UnitPrice) AS TotalSales

FROM FoodNStuff.Product P INNER JOIN FoodNStuff.Inventory I ON I.ProductID = P.ProductID
	INNER JOIN FoodNStuff.SaleItem SI ON SI.InventoryID = I.InventoryID

WHERE P.ProductID = $

GROUP BY P.ProductID, P.[Name]
ORDER BY TotalSales;