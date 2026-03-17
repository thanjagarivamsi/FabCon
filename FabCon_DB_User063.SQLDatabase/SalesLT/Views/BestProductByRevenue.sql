CREATE   VIEW SalesLT.BestProductByRevenue AS
SELECT TOP 1 p.ProductID, p.Name AS ProductName, 
       SUM(od.OrderQty * od.UnitPrice * (1 - od.UnitPriceDiscount)) AS TotalRevenue
FROM SalesLT.Product p
JOIN SalesLT.SalesOrderDetail od ON p.ProductID = od.ProductID
GROUP BY p.ProductID, p.Name
ORDER BY TotalRevenue DESC;

GO

