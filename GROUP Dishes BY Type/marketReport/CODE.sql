CREATE PROCEDURE marketReport()
BEGIN
	SELECT IFNULL(country, "Total:") AS country,
    IFNULL(COUNT(country), SUM(competitor)) AS competitors
    FROM foreignCompetitors
    GROUP BY country WITH ROLLUP;
END
