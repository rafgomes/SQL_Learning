/*-------------------------DATEPART-------------------------*/
SELECT * FROM Sales.SalesOrderHeader
SELECT SalesOrderID, DATEPART(month, OrderDate) as MES FROM Sales.SalesOrderHeader
SELECT SalesOrderID, DATEPART(day, OrderDate) as DIA FROM Sales.SalesOrderHeader
SELECT SalesOrderID, DATEPART(year, OrderDate) as ANO FROM Sales.SalesOrderHeader

SELECT AVG(TotalDue) Media, DATEPART(month, OrderDate) AS Mes FROM Sales.SalesOrderHeader GROUP BY DATEPART(month, OrderDate) ORDER BY Mes
SELECT AVG(TotalDue) Media, DATEPART(year, OrderDate) AS Ano FROM Sales.SalesOrderHeader GROUP BY DATEPART(year, OrderDate) ORDER BY Ano