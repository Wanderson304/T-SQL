/*Consultas SQL Prontas.*/
/*Base de consultas: https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all&comments=1*/	

/*Base de consultas: AdventureWorks2016 (SQL server Local)*/
/*Listar a quantidade de pedido/vendas por cliente. Usando JOIN E GROUP BY*/
SELECT [Production].[Product].Name, SUM([Sales].[SalesOrderDetail].OrderQty) as 'Qtd. de compras'
FROM [Production].[Product]
	JOIN [Sales].[SalesOrderDetail] ON [Sales].[SalesOrderDetail].SalesOrderDetailID = [Production].[Product].ProductID
	GROUP BY [Production].[Product].Name 

/*Consultar os nomes de todos os produdutos e suas respectivas categorias*/
SELECT Products.ProductName, Categories.CategoryName
FROM Products LEFT join Categories ON Products.CategoryID = Categories.CategoryID

/*Consultar os Ids das ordens com os nomes e telefones das transportadoras*/
/*Use o Left Join para retornar todos os itens que exite na tebala da esuqerda*/
SELECT Orders.OrderID, Shippers.ShipperName, Shippers.Phone
FROM Orders LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID

/*Consultar a quantidade de orders/venda de cada um dos empregados. O resultado deve ter nome do empregado e 
a quantaidade de orders por empregado, mesmo que o mepregado não tennha nenhuma venda/resultado */
SELECT Employees.FirstName as "Nome Empregado", Count(Orders.OrderID) as "Qnt Vendas"
FROM Employees LEFT JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Employees.FirstName

/*SUBCONSULTA: Consultar os números das ordens, primeiro e ultimos nomes dos empregados que tenham 'A' como 
primeira letra do nome. Ultilizar subconsulta como tabela de empregados com letra A (Tabela Empoyees e Orders) */
SELECT Orders.EmployeeID, empregado.FirstName, empregado.LastName
FROM Orders JOIN (SELECT * FROM Employees WHERE FirstName LIKE 'A%') as empregados ON 
Orders.EmployeeID = empregados.EmployeeID;

/*TABELA TEMPORARIA: Trasformar uma consulta em uma tabela temporaria em tempo de consulta*/
/*A consulta SELECT * FROM Employees WHERE FirstName LIKE 'A%' será uma tabela temporária em empregados_com_a*/
SELECT *
FROM (SELECT * FROM Employees WHERE FirstName LIKE 'A%') as "empregados_com_a"

/*OU*/

WITH
empregados_com_a AS (SELECT * FROM Employees WHERE FirstName LIKE 'A%')
SELECT *
FROM empregados_com_a;

