//Consultas SQL Prontas.
	

// Base de consultas: AdventureWorks2016 (SQL server Local)
//Listar a quantidade de pedido/vendas por cliente. Usando JOIN E GROUP BY
SELECT [Production].[Product].Name, SUM([Sales].[SalesOrderDetail].OrderQty) as 'Qtd. de compras'
FROM [Production].[Product]
	JOIN [Sales].[SalesOrderDetail] ON [Sales].[SalesOrderDetail].SalesOrderDetailID = [Production].[Product].ProductID
	GROUP BY [Production].[Product].Name 
