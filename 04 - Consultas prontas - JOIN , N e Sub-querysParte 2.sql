//Consultas SQL Prontas.
// Base de consultas: https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all&comments=1


//Listar a quantidade de pedido/vendas por cliente. Usando JOIN E GROUP BY
SELECT [Production].[Product].Name, SUM([Sales].[SalesOrderDetail].OrderQty) as 'Qtd. de compras'
FROM [Production].[Product]
	JOIN [Sales].[SalesOrderDetail] ON [Sales].[SalesOrderDetail].SalesOrderDetailID = [Production].[Product].ProductID
	GROUP BY [Production].[Product].Name 
