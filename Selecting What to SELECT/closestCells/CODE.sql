CREATE PROCEDURE closestCells()
BEGIN
    SELECT c.id1, c.id2 FROM
	(
        SELECT a.id id1, DISTANCE(GeomFromText(CONCAT('POINT(', a.x, ' ', a.y, ')')),
                                  GeomFromText(CONCAT('POINT(', b.x, ' ', b.y, ')'))) AS distance, b.id id2 
        FROM positions a
        JOIN positions b ON a.id != b.id
    ) AS c
    LEFT JOIN 
    (
        SELECT a.id id1, DISTANCE(GeomFromText(CONCAT('POINT(', a.x, ' ', a.y, ')')),
                                  GeomFromText(CONCAT('POINT(', b.x, ' ', b.y, ')'))) AS distance, b.id id2
        FROM positions a
        JOIN positions b ON a.id != b.id
    ) AS d ON c.id1 = d.id1 AND c.distance > d.distance
    WHERE d.distance IS NULL
    ORDER BY c.id1;
    
    
END
