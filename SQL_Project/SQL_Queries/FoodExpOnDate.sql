--SELECT I.ProductID,  I.StockQuantity FROM FoodNStuff.Inventory I WHERE CAST(I.ExpDate as date) = '$';



SELECT I.ProductID, P.[Name], I.StockQuantity FROM FoodNStuff.Inventory I INNER JOIN FoodNStuff.Product P ON P.ProductID = I.ProductID WHERE CAST(I.ExpDate as date) = '$';
