USE ONLINE_SHOP
GO

/*Cau1*/
IF OBJECT_ID('uspCau1', 'P') IS NOT NULL
DROP PROC uspCau1
GO
CREATE PROC uspCau1
	@a int = 0,
	@b int = 0
AS
	RETURN (@a + @b)
GO
--Gọi
DECLARE @x int = 5, @y int = 9, @tong int = 0
EXEC @tong = uspCau1 @x, @y
PRINT @tong

/*1b*/
IF OBJECT_ID('uspCau1b', 'P') IS NOT NULL
DROP PROC uspCau1b
GO
CREATE PROC uspCau1b
	@a float = 0,
	@b float = 0,
	@tong float out
AS
	--RETURN (@a + @b)
	set @tong = @a+ @b;
GO
DECLARE @x float = 5.6, @y float = 9.1, @tong float = 0
EXEC uspCau1b @x, @y, @tong out
PRINT CAST (@x AS varchar)+'+'+
CAST (@y AS varchar) +'='+
CAST (@tong AS varchar) 
