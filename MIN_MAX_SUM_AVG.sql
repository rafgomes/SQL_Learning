SELECT TOP 10 * FROM Sales.SalesOrderDetail

SELECT TOP 10 sum(linetotal) FROM Sales.SalesOrderDetail --Soma da coluna LineTotal
SELECT TOP 10 sum(linetotal) AS "Soma" FROM Sales.SalesOrderDetail --a função AS "apelida" o nome da coluna exibida no retorno

SELECT TOP 10 MIN(linetotal) FROM Sales.SalesOrderDetail --Retorna o valor minimo

SELECT TOP 10 MAX(linetotal) FROM Sales.SalesOrderDetail --Retorna o valor maximo

SELECT TOP 10 AVG(linetotal) FROM Sales.SalesOrderDetail --Retorna a média
