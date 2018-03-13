CREATE PROCEDURE holidayEvent()
BEGIN
    SELECT DISTINCT buyer_name winners 
    FROM(
        SELECT buyer_name, @i:=@i+1 num
        FROM purchases, (SELECT @i:=0) t
    ) w
    WHERE num % 4 = 0
    ORDER BY 1;
END
