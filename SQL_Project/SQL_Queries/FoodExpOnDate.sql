--Querie that takes in a date in the format of yyy-mm-dd to replace the $ and returns what products and amount are expering on that day

SELECT I.ProductID, P.[Name], I.StockQuantity FROM FoodNStuff.Inventory I INNER JOIN FoodNStuff.Product P ON P.ProductID = I.ProductID WHERE CAST(I.ExpDate as date) = '$';