CREATE PROCEDURE usersByContinent()
BEGIN
	SELECT continent, SUM(users) AS users
    	FROM countries
    	ORDER BY users DESC;
END
