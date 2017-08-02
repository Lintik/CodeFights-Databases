CREATE PROCEDURE mischievousNephews()
BEGIN
	SELECT MOD( DAYOFWEEK(mischief_date) + 5, 7 ) AS weekday, mischief_date, author, title FROM mischief
    ORDER BY weekday, Field(author, 'Huey', 'Dewey' ,'Louie'), mischief_date, title;
END
