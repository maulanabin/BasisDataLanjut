---------------------------------------------------------------------
-- LAB 20
--
-- Exercise 2
---------------------------------------------------------------------

USE TSQL;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- Write a SELECT statement to retrieve some calculated columns using different system functions: 
--  Use the DB_ID function to retrieve the current database identification number. Give this calculated column the alias databaseid.
--  Use the DB_NAME function to retrieve the current database name. Give this calculated column the alias databasename.
--  Use the USER_NAME function to retrieve the current database user name. Give this calculated column the alias currusername.
--
-- Execute the written statement and compare the results that you got with the desired results shown in the file 62 - Lab Exercise 2 - Task 1 Result.txt.

---------------------------------------------------------------------
-- Maulana Bintang Irfansyah - 15 - TI 2H
SELECT
	DB_ID() AS database_id,
	DB_NAME(DB_ID()) AS database_name,
	USER_ID() AS user_id,
	USER_NAME() AS user_name;

--------------------------------
-- Task 2
-- 
-- Write a SELECT statement to retrieve the name column and two calculated columns from the sys.columns view. To retrieve the first calculated column, use the OBJECT_NAME function with the object_id column as a parameter. Give it the alias tablename. To retrieve the second calculated column, use the OBJECT_SCHEMA_NAME function with the object_id column as a parameter. Give it the alias schemaname.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 63 - Lab Exercise 2 - Task 2 Result.txt. 
---------------------------------------------------------------------
-- Maulana Bintang Irfansyah - 15 - TI 2H
SELECT
	name, type_desc,
	OBJECT_NAME(object_id) AS object_id,
	OBJECT_SCHEMA_NAME(object_id) AS schemaname
FROM sys.objects;



SELECT
 
	OBJECT_NAME(object_id) AS table_name,
	object_id,
	OBJECT_SCHEMA_NAME(object_id) AS schema_name
FROM sys.columns;

---------------------------------------------------------------------
-- Task 3
-- 
-- Write a SELECT statement to retrieve the name column and two calculated columns from the sys.columns view. Give the name column the alias columnname. Use the OBJECT_NAME function to retrieve the first calculated column, giving it the alias tablename. Use the OBJECT_SCHEMA_NAME function to retrieve the second calculated column, giving it the alias schemaname. Filter the result to include only columns that contain the word “name” in the column name and belong to user-defined tables. To do this, use the OBJECTPROPERTY function, passing it two parameters: object_id and IsUserTable with the value 1.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 64 - Lab Exercise 2 – Task 3 Result.txt. 
---------------------------------------------------------------------
--SELECT
--c.name AS columnname,
--OBJECT_NAME (c.object_id) AS tablename,
--OBJECT_SCHEMA_NAME(c.object_id) AS schemaname
--FROM sys.columns AS c
--WHERE
--c.name LIKE N'%name%'
--AND OBJECTPROPERTY(c.object_id, N'IsUserTable') = 1;

-- Maulana Bintang Irfansyah - 15 - TI 2H
SELECT
	c.name AS column_name,
	OBJECT_NAME(c.object_id) AS table_name,
	OBJECT_SCHEMA_NAME(c.object_id) AS schema_name
FROM sys.columns AS c
WHERE 
	c.name LIKE N'%name%' AND OBJECTPROPERTY(c.object_id, N'IsUserTable') = 1;
	
---------------------------------------------------------------------
-- Task 4
-- 
-- Write a SELECT statement to retrieve the view definition for the Sales.CustOrders view using the OBJECT_DEFINITION function. You will have to pass an object id to the function, so you can use the OBJECT_ID function to get the needed information.
--
-- Execute the written statement and compare the results that you got with the recommended result shown in the file 65 - Lab Exercise 2 - Task 4 Result.txt. 
---------------------------------------------------------------------
-- Maulana Bintang Irfansyah - 15 - TI 2H
SELECT 
    OBJECT_DEFINITION(OBJECT_ID(N'Sales.CustOrders')) 
AS view_info;




	SELECT 
    OBJECT_DEFINITION(
        OBJECT_ID(
            N'Sales.CustOrders'
        )
    ) view_info;