CREATE PROCEDURE consecutiveIds()
BEGIN
	  SELECT x.id AS oldId, COUNT(1) AS newId
    FROM itemIds x
    INNER JOIN itemIds y ON y.id <= x.id
    GROUP BY x.id
    ORDER BY x.id;
END
