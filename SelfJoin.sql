--SELECT NOME_COLUNA FROM TABELA A, TABELA B WHERE CONDICAO

--Retornar todos os clientes que moram na mesma regiao
SELECT * FROM CUSTOMERS
SELECT A.ContactName, A.Region,B.ContactName, B.Region FROM dbo.Customers A, Customers B WHERE A.Region = B.Region

--Retomar nome e data de contratação de todos os funcionarios que foram contratados no mesmo ano
SELECT * FROM Employees
SELECT A.FirstName, A.HireDate, b.FirstName, b.HireDate FROM Employees A, Employees B WHERE DATEPART(YEAR,a.HireDate) = DATEPART(YEAR,b.HireDate)

--Retornar na tabela Order Detail quais produtos tem o mesmo percentual de desconto
SELECT A.productID, A.discount, B.productID,b.discount FROM [Order Details] A, [Order Details] B where A.Discount = B.Discount