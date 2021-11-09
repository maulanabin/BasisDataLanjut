---------------------------------------------------------------------
-- LAB 08
--
-- Exercise 3
---------------------------------------------------------------------

USE TSQL
GO

-- Maulana Bintang Irfansyah - 15 - TI 2H
Select o.custid, c.companyname AS Customer, c.city, c.country, d.productid, p.productname, s.companyname AS Shipper
FROM Sales.Orders AS o
JOIN Sales.Customers AS c
ON o.custid = c.custid
JOIN Sales.OrderDetails AS d
ON d.orderid = o.orderid
JOIN Production.Products AS p
ON p.productid = d.productid
JOIN Sales.Shippers AS s
ON s.shipperid = o.shipperid;

-- Maulana Bintang Irfansyah - 15 - TI 2H
Select o.custid, c.companyname AS Customer, c.city, c.country, d.productid, p.productname, s.companyname AS Shipper
FROM Sales.Orders AS o
JOIN Sales.Customers AS c
ON o.custid = c.custid
JOIN Sales.OrderDetails AS d
ON d.orderid = o.orderid
JOIN Production.Products AS p
ON p.productid = d.productid
JOIN Sales.Shippers AS s
ON s.shipperid = o.shipperid
WHERE c.country = N'USA'
ORDER BY c.city, p.productname ASC;

-- Maulana Bintang Irfansyah - 15 - TI 2H
SELECT YEAR(orderdate) AS Tahun, MONTH(orderdate) AS Bulan, SUM(d.qty * d.unitprice) AS TotalPerBulan
FROM Sales.Orders AS o
JOIN Sales.OrderDetails AS d
ON d.orderid = o.orderid
GROUP BY YEAR(orderdate), MONTH(orderdate)
HAVING SUM(d.qty * d.unitprice) > 40000
ORDER BY Tahun, Bulan ASC;


-- Maulana Bintang Irfansyah - 15 - TI 2H
SELECT o.orderid, o.orderdate, o.custid, o.empid, e.firstname, e.lastname
FROM Sales.Orders AS o
JOIN HR.Employees AS e
ON e.empid = o.empid
WHERE o.custid = (SELECT MIN (o.custid)
FROM Sales.Orders AS o);

-- Maulana Bintang Irfansyah - 15 - TI 2H
CREATE TABLE Production.Konversi (
   	nama varchar(20),
   	phonenumber varchar(15),
   	ultah varchar(9),
);
INSERT INTO Production.Konversi (nama,phonenumber,ultah)
VALUES
          	('Ahmad','081245675638', '20090101'),
          	('Beni', '085775875638', '20100802'),
          	('Curly', '0856X875638','20110103X'),
          	('Desy', '08161875638','20010104'),
          	('Erika', '0894Y875638','2003Z0105'),
          	('Fredy', '08045875638','20110108');

SELECT nama, ultah





SELECT * FROM Sales.Orders;
SELECT * FROM Sales.Customers;
SELECT * FROM Sales.Shippers;
SELECT * FROM Production.Products;
SELECT * FROM Sales.OrderDetails;




---------------------------------------------------------------------
-- Task 1
-- 
-- Open the project file F:\10774A_Labs\10774A_08_PRJ\10774A_08_PRJ.ssmssln and the T-SQL script 71 - Lab Exercise 3.sql. Ensure that you are connected to the TSQL2012 database.
--
-- Write a SELECT statement to retrieve the contactname and fax columns from the Sales.Customers table. If there is a missing value in the fax column, return the value ‘No information’.
--
-- Write two solutions, one using the COALESCE function and the other using the ISNULL function.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 72 - Lab Exercise 3 - Task 1 Result.txt. 
--
-- What is the difference between the ISNULL and COALESCE functions?
---------------------------------------------------------------------
-- Maulana Bintang Irfansyah - 15 - TI 2H
SELECT
	c.custid, c.contactname,
	(
		SELECT MAX(o.orderdate)
		FROM Sales.Orders AS o
		WHERE o.custid = c.custid
	) AS lastorderdate
FROM Sales.Customers AS c;


---------------------------------------------------------------------
-- Task 2
-- 
-- Update the provided T-SQL statement with a WHERE clause to filter the region column using the provided variable @region, which can have a value or a NULL. Test the solution using both provided variable declaration cases.
---------------------------------------------------------------------

DECLARE @region AS NVARCHAR(30) = NULL; 

SELECT 
	custid, region
FROM Sales.Customers;

GO

DECLARE @region AS NVARCHAR(30) = N'WA'; 

SELECT 
	custid, region
FROM Sales.Customers;


---------------------------------------------------------------------
-- Task 3
-- 
-- Write a SELECT statement to retrieve the contactname, city, and region columns from the Sales.Customers table. Return only rows that do not have two characters in the region column, including those with an inapplicable region (where the region is NULL).
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 73 - Lab Exercise 3 - Task 3 Result.txt. Notice the number of rows returned.
---------------------------------------------------------------------

-- Maulana Bintang Irfansyah - 15 - TI 2H
SELECT c.custid, c.contactname
FROM Sales.Customers AS c
WHERE NOT EXISTS (SELECT * FROM Sales.Orders AS o
				  WHERE o.custid = c.custid);

-- Maulana Bintang Irfansyah - 15 - TI 2H
SELECT c.custid, c.contactname
FROM Sales.Customers AS c
WHERE EXISTS (
			  Select * FROM Sales.Orders AS o
			  INNER JOIN Sales.OrderDetails AS d
			  ON d.orderid = o.orderid
			  WHERE o.custid = c.custid
				AND d.unitprice > 100.
				AND o.orderdate >= '20080401'
			);

-- Maulana Bintang Irfansyah - 15 - TI 2H
SELECT
	YEAR(o.orderdate) AS orderyear,
	SUM(d.qty * d.unitprice) AS totalsales,
	(
		SELECT SUM(d2.qty * d2.unitprice)
		FROM Sales.Orders AS o2
		INNER JOIN Sales.OrderDetails AS d2
		ON d2.orderid = o2.orderid
		WHERE YEAR(o2.orderdate) <= YEAR(o.orderdate)
	) AS runsales
FROM Sales.Orders AS o
INNER JOIN Sales.OrderDetails AS d
ON d.orderid = o.orderid
GROUP BY YEAR(o.orderdate)
ORDER BY orderyear;


