CREATE   VIEW SalesLT.MostSoldProduct AS
SELECT TOP 1 p.ProductID, p.Name AS ProductName, SUM(od.OrderQty) AS TotalQuantitySold
FROM SalesLT.Product p
JOIN SalesLT.SalesOrderDetail od ON p.ProductID = od.ProductID
GROUP BY p.ProductID, p.Name
ORDER BY TotalQuantitySold DESC;

GO

