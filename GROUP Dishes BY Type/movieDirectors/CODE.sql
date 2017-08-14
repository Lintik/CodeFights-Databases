CREATE PROCEDURE movieDirectors()
BEGIN
	SELECT director FROM moviesInfo
    WHERE oscars > 2 and year > 2000
    GROUP BY director
    ORDER BY director ASC;
END
