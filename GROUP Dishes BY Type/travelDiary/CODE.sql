CREATE PROCEDURE travelDiary()
BEGIN
	  SELECT GROUP_CONCAT(DISTINCT country SEPARATOR ';') AS countries
    FROM diary
    GROUP BY 'all'
    ORDER BY country ASC;
END
