---------------------------------------------------------------------
-- LAB 08
--
-- Exercise 2
---------------------------------------------------------------------

USE TSQL;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Open the project file F:\10774A_Labs\10774A_08_PRJ\10774A_08_PRJ.ssmssln and the T-SQL script 61 - Lab Exercise 2.sql. Ensure that you are connected to the TSQL2012 database.
--
-- Write a SELECT statement against the Sales.Customers table and retrieve the custid and contactname columns. Add a calculated column named segmentgroup using a logical function IIF with the value ?Target group? for customers that are from Mexico and have in the contact title the value ?Owner?. Use the value ?Other? for the rest of the customers. 
--
-- Execute the written statement and compare the results that you got with the desired results shown in the file 62 - Lab Exercise 2 - Task 1 Result.txt.
---------------------------------------------------------------------
-- Maulana Bintang Irfansyah - 15 - TI 2H
SELECT
	productid, productname
FROM Production.Products
WHERE 
	productid IN
(	
		SELECT productid
		FROM Sales.OrderDetails
		WHERE qty > 100
);
-----------------------
----------------------------------------------
-- Task 2
-- 
-- Modify the T-SQL statement from task 1 to change the calculated column to show the value ?Target group? for all customers without a missing value in the region attribute or with the value ?Owner? in the contact title attribute.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 63 - Lab Exercise 2 - Task 2 Result.txt. 
---------------------------------------------------------------------
-- Maulana Bintang Irfansyah - 15 - TI 2H
SELECT
	custid, contactname
FROM Sales.Customers
WHERE custid NOT IN
(
		SELECT custid
		FROM Sales.Orders
);
---------------------------------------------------------------------
-- Task 3
-- 
-- Write a SELECT statement against the Sales.Customers table and retrieve the custid and contactname columns. Add a calculated column named segmentgroup using the logic function CHOOSE with four possible descriptions (?Group One?, ?Group Two?, ?Group Three?, ?Group Four?). Use the modulo operator on the column custid. (Use the expression custid % 4 + 1 to determine the target group.)
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 64 - Lab Exercise 2 - Task 3 Result.txt.
---------------------------------------------------------------------

INSERT INTO Sales.Orders (
custid, empid, orderdate, requireddate, shippeddate, shipperid, freight, 
shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry)
VALUES
(NULL, 1, '20111231', '20111231', '20111231', 1, 0, 
'ShipOne', 'ShipAddress', 'ShipCity', 'RA', '1000', 'USA');


SELECT
	custid, contactname
FROM Sales.Customers
WHERE custid NOT IN
(
		SELECT custid
		FROM Sales.Orders
);

-- Maulana Bintang Irfansyah - 15 - TI 2H
SELECT
	custid, contactname
FROM Sales.Customers
WHERE custid NOT IN
(
		SELECT custid
		FROM Sales.Orders
		WHERE custid IS NOT NULL
);


