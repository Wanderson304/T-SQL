//Consultas SQL Prontas.
// Base de consultas: https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all&comments=1
  
//Fitro por cidade
select CustomerID as "ID Cliente", CustomerName as "Nome Cliente", Country as "País", City as "Cidade"
from Customers
WHERE City = 'São Paulo'

//Ordenar de forma acendente por cidade
SELECT CustomerID, CustomerName, Country
FROM Customers
ORDER BY Country;

//Consulta com mais de um filtro
SELECT * FROM Customers
WHERE City = 'México D.F.' AND PostalCode = '05033'

//Consulta com base em parte de uma plavra, 
//Que contem x palavra.
SELECT CustomerName as nome, Address as Endereço
FROM Customers
WHERE CustomerName LIKE '%helados%'

//Selecionar clientes onde a 2º palavra do nome tem a letra "a"
SELECT * FROM Customers
WHERE CustomerName LIKE '_a%'

//Selecionar cliemnte que tenha uma das letras no nome, que estão no cochates]]
SELECT * FROM Customers
WHERE CustomerName LIKE '[abct]%'

//Consultar os clientes cujo países começam com a lera "A"
SELECT * FROM Customers
WHERE Country LIKE 'A%'

//Consultar os clientes cujo países tem a segunda letra A
SELECT * FROM Customers
WHERE Country LIKE '_a%'

//Consultar todos os produtos que tenham "Guaraná" no ProductName
SELECT * FROM products
WHERE ProductName LIKE '%Guaraná%'

//Consultar todos os clientes da cidade de São Paulo e que tenha contato com um nome "Pedro"
SELECT * FROM Customers
WHERE City = "São Paulo" AND ContactName LIKE '%Pedro%'



