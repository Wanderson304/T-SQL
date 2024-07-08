//Consultas SQL Prontas

//Fitro por cidade
select CustomerID as "ID Cliente", CustomerName as "Nome Cliente", Country as "País", City as "Cidade"
from Customers
WHERE City = 'São Paulo'

//Ordenar de forma acendente por cidade
SELECT CustomerID, CustomerName, Country
FROM Customers
ORDER BY Country;

