USE TSQL;
GO

--Task 1: Re-throw the existing error back to a client
-- Maulana Bintang Irfansyah - 15 - TI 2H
DECLARE @num varchar(20) = '0';

BEGIN TRY
	PRINT 5. / CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH
	EXECUTE dbo.GetErrorInfo;
	THROW;
END CATCH;
GO 

-- Maulana Bintang Irfansyah - 15 - TI 2H
DECLARE @num varchar(20) = 'A';

BEGIN TRY
	PRINT 5. / CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH
	EXECUTE dbo.GetErrorInfo;
	IF ERROR_NUMBER() = 8134
	BEGIN
		PRINT 'Handling devision by zero...';
	END
	ELSE
	BEGIN
		PRINT 'Throwing original error';
		THROW;
	END;

END CATCH;

DECLARE @num varchar(20) = '0';
BEGIN TRY
PRINT 5. / CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH

END CATCH;

--Task 2: Add an error handling routine
DECLARE @num varchar(20) = '0';
BEGIN TRY
PRINT 5. / CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH
EXECUTE dbo.GetErrorInfo;
	THROW;
END CATCH;

--Task 3: Add a different error handling routine
DECLARE @msg AS varchar(2048);
SET @msg = 'Anda sedang mengerjakan Jobsheet 15 pada ' + 
	FORMAT(CURRENT_TIMESTAMP, 'MMMM d, yyyy', 'en-US') + 
	'. Ini bukan error sist';

--Task 4: Remove the stored procedure
DROP  PROCEDURE dbo.GetErrorInfo

go
DECLARE @msg AS varchar(2048);
SET @msg = 'Anda sedang mengerjakan Jobsheet 15 pada ' + FORMAT(CURRENT_TIMESTAMP,
			'MMMM d, yyyy', 'en-US') + '. Ini bukan error sist';
go

DECLARE @msg AS varchar(2048);
SET @msg = 'You are doing the exercise for Module 18 on ' + FORMAT(CURRENT_TIMESTAMP,
'MMMM d, yyyy', 'en-US') + '. It''s not an error but it means that you are near the
final module!';
THROW 50001, @msg, 1;