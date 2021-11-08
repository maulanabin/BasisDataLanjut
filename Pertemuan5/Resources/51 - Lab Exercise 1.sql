---------------------------------------------------------------------
-- LAB 07
--
-- Exercise 1
---------------------------------------------------------------------

USE TSQL;
GO

---------------------------------------------------------------------
-- Task 1
-- 
-- 
-- Open the project file F:\10774A_Labs\10774A_07_PRJ\10774A_07_PRJ.ssmssln and the T-SQL script 51 - Lab Exercise 1.sql. To set your database context to that of the TSQL2012 database, highlight the statement USE TSQL2012; and execute the highlighted code. After executing this statement, the TSQL2012 database should be selected in the Available Databases box. In subsequent exercises, you will simply be instructed to ensure that you are connected to the TSQL2012 database.
--
-- Write a SELECT statement to return columns that contain:
--  The current date and time. Use the alias currentdatetime.
--  Just the current date. Use the alias currentdate.
--  Just the current time. Use the alias currenttime.
--  Just the current year. Use the alias currentyear.
--  Just the current month number. Use the alias currentmonth.
--  Just the current day of month number. Use the alias currentday.
--  Just the current week number in the year. Use the alias currentweeknumber.
--  The name of the current month based on the currentdatetime column. Use the alias currentmonthname.
-- 
-- Execute the written statement and compare the results that you got with the desired results shown in the file 52 - Lab Exercise 1 - Task 1 Result.txt. Your results will be different because of the current date and time value.
--
-- Can you use the alias currentdatetime as the source in the second column calculation (currentdate)? Please explain.
---------------------------------------------------------------------
-- Maulana Bintang Irfansyah_15_TI 2H
SELECT
	CURRENT_TIMESTAMP AS currentdatetime,
	CAST(CURRENT_TIMESTAMP AS DATE) AS currentdate,
	CAST(CURRENT_TIMESTAMP AS TIME) AS currenttime,
	YEAR(CURRENT_TIMESTAMP) AS currentyear,
	MONTH(CURRENT_TIMESTAMP) AS currentmonth,
	DAY(CURRENT_TIMESTAMP) AS currentday,
	DATEPART(week, CURRENT_TIMESTAMP) AS currentweeknumber,
	DATENAME(month, CURRENT_TIMESTAMP) AS currentmonthname;


---------------------------------------------------------------------
-- Task 2
--  
-- Write December 11, 2011, as a column with a data type of date. Use the different possibilities inside the T-SQL language (cast, convert, specific function, etc.) and use the alias somedate.
---------------------------------------------------------------------
-- Maulana Bintang Irfansyah_15_TI 2H
SELECT CAST('19450817' AS DATE) AS somedate;
SELECT CONVERT(DATE, '08/17/1945') AS somedate;
SELECT DATEFROMPARTS(1945, 08, 17) AS somedate;

---------------------------------------------------------------------
-- Task 3
-- 
-- Write a SELECT statement to return columns that contain:
--  Three months from the current date and time. Use the alias threemonths.
--  Number of days between the current date and the first column (threemonths). Use the alias diffdays.
--  Number of weeks between April 4, 1992, and September 16, 2011. Use the alias diffweeks.
--  First day in the current month based on the current date and time. Use the alias firstday.
--
-- Execute the written statement and compare the results that you got with the desired results shown in the file 53 - Lab Exercise 1 - Task 3 Result.txt. Some results will be different because of the current date and time value.
---------------------------------------------------------------------
-- Maulana Bintang Irfansyah_15_TI 2H
SELECT 
	DATEADD(month, 3, CURRENT_TIMESTAMP) AS threemonths,
	DATEDIFF(day, CURRENT_TIMESTAMP, DATEADD(month, 3, CURRENT_TIMESTAMP))
	AS diffdays,
	DATEDIFF(week, '19450817', '20181001') AS diffweeks,
	DATEADD(day, -DAY(CURRENT_TIMESTAMP) + 1, CURRENT_TIMESTAMP) AS firstday;
---------------------------------------------------------------------
-- Task 4
-- 
-- The IT department has written a T-SQL statement that creates and populates a table named Sales.Somedates. 
--
-- Execute the provided T-SQL statement.
-- 
-- Write a SELECT statement against the Sales.Somedates table and retrieve the isitdate column. Add a new column named converteddate with a new date data type value based on the column isitdate. If the column isitdate cannot be converted to a date data type for a specific row, then return a NULL. 
--
-- Execute the written statement and compare the results that you got with the desired results shown in the file 54 - Lab Exercise 1 - Task 4 Result.txt. 
-- 
-- What is the difference between the SYSDATETIME and CURRENT_TIMESTAMP functions?
--
-- What is a language-neutral format for the DATE type?
---------------------------------------------------------------------

SET NOCOUNT ON;

IF OBJECT_ID('Sales.Somedates') IS NOT NULL 
	DROP TABLE Sales.Somedates;

CREATE TABLE Sales.Somedates (
	isitdate varchar(9)
);

INSERT INTO Sales.Somedates (isitdate) VALUES 
	('20110101'),
	('20110102'),
	('20110103X'),
	('20110104'),
	('20110105'),
	('20110106'),
	('20110107Y'),
	('20110108');

SET NOCOUNT OFF;

SELECT isitdate
FROM Sales.Somedates;


-- Maulana Bintang Irfansyah_15_TI 2H
SELECT
	isitdate, 
	CASE WHEN ISDATE(isitdate) = 1 THEN CONVERT(DATE, isitdate)
	ELSE NULL END AS converteddate
	FROM Sales.Somedates;



--SELECT
--isitdate,
--CASE WHEN ISDATE(isitdate) = 1 THEN CONVERT(DATE, isitdate) ELSE NULL END AS
--converteddate
--FROM Sales.Somedates;
---- Uses the new TRY_CONVERT function in SQL Server 2012
--SELECT
--isitdate,
--TRY_CONVERT(DATE, isitdate) AS converteddate
--FROM Sales.Somedates;


---------------------------------------------------------------------
-- Task 5
-- 
-- copy-paste text about lab from doc file
---------------------------------------------------------------------
-- drop the table 

DROP TABLE Sales.Somedates;