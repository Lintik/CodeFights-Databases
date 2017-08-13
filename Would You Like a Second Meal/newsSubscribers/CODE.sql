CREATE PROCEDURE newsSubscribers()
BEGIN
	SELECT subscriber FROM full_year
    WHERE INSTR(newspaper, 'Daily')
    UNION
    SELECT subscriber FROM half_year
    WHERE INSTR(newspaper, 'Daily')
    ORDER BY subscriber;
END
