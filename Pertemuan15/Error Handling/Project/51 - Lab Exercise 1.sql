USE TSQL;
GO

--Task 1: 

SELECT CAST(N'Ini teks loh' AS int);

--Task 2: 
BEGIN TRY
	SELECT CAST(N'Ini teks loh' AS int);
END TRY
BEGIN CATCH
	PRINT 'Error';
END CATCH;

--Task 3: 
DECLARE @num varchar(20) = '0';
BEGIN TRY
	PRINT 5. / CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH
END CATCH;
go

--Task 4: Execute a stored procedure in the CATCH block
-- Maulana Bintang Irfansyah - 15 - TI 2H
DECLARE @num varchar(20) = '0';

BEGIN TRY
	PRINT 5. / CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH
	PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS varchar(10));
	PRINT 'Error Message: ' + ERROR_MESSAGE();
END CATCH;
go

--TRY/CATCH
DECLARE @num varchar(20) = '0';
BEGIN TRY
PRINT 5. / CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH

END CATCH;


go
-- Maulana Bintang Irfansyah - 15 - TI 2H
DECLARE @num varchar(20) = 'A';

BEGIN TRY
	PRINT 5. / CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH
	IF ERROR_NUMBER() IN (245, 8114)
	BEGIN
		PRINT 'Handling conversion error...'
	END
	ELSE
	BEGIN
		PRINT 'Handling non-conversion error...';
	END;
	PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS varchar(10));
	PRINT 'Error Message: ' + ERROR_MESSAGE();
END CATCH;

go
-- Maulana Bintang Irfansyah - 15 - TI 2H
CREATE PROCEDURE dbo.GetErrorInfo AS
PRINT 'Error Number: ' + CAST(ERROR_NUMBER() AS varchar(10));
PRINT 'Error Message: ' + ERROR_MESSAGE();
PRINT 'Error Severity: ' + CAST(ERROR_SEVERITY() AS varchar(10));
PRINT 'Error State: ' + CAST(ERROR_STATE() AS varchar(10));
PRINT 'Error Line: ' + CAST(ERROR_LINE() AS varchar(10));
PRINT 'Error Proc: ' + COALESCE(ERROR_PROCEDURE(), 'Not within procedure');

DECLARE @num varchar(20) = '0';

BEGIN TRY
	PRINT 5. / CAST(@num AS numeric(10,4));
END TRY
BEGIN CATCH
	EXECUTE dbo.GetErrorInfo;
END CATCH;



