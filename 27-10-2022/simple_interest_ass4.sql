--Create a user defined function where you can calculate interest on a savings account with the formula pnr/100.
--If it is a checking account, calculate the interest as 5% on principal amount.


CREATE function Interest(@P BIGINT,@T INT)
RETURNS BIGINT AS
BEGIN
   DECLARE @R AS INT
   SET  @R=5
  DECLARE @RES AS BIGINT
  SELECT  @RES = (@P*@R*@T)/100
  RETURN @RES
END

SELECT dbo.Interest(59000,3)
