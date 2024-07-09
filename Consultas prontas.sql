//Consultas SQL Prontas
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
WHERE City = 'México D.F.' AND PostalCode = '05033 '


