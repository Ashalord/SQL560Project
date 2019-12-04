SELECT I.ProductID, I.StockQuantity FROM FoodNStuff.Inventory I WHERE CAST(I.ExpDate as date) = '$';
