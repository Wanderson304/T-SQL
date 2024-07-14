//Consultas SQL Prontas.
// Base de consultas: https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all&comments=1

//Contar o numero de cietes
SELECT COUNT(*) as Numero_clientes
FROM Customers;

//Contar o número de pai´sis sem repetições (Que não se repetem na tabela)
SELECT COUNT(DISTINCT Country) 
FROM Customers;

//Caucular a média do preço dos produtos
SELECT AVG(Price) as media_preco_produtos 
FROM Products;

//Produto com o maior preço  / produto mais caro.
SELECT MAX(Price) as MAIOR_preco_produtos 
FROM Products;

//Produto com o menor preço  / produto mais mais barato.
SELECT MIN(Price) as MENOR_preco_produtos 
FROM Products;

