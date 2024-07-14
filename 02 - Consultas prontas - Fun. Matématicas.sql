//Consultas SQL Prontas.
// Base de consultas: https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_all&comments=1

//Contar o numero de cietes
SELECT COUNT(*) as Numero_clientes
FROM Customers;

//Contar o número de pai´sis sem repetições (Que não se repetem na tabela)
SELECT COUNT(DISTINCT Country) 
FROM Customers;


