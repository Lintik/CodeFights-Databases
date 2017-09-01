CREATE PROCEDURE closestCells()
BEGIN
    SELECT a.id id1,
    (
        SELECT id 
        FROM positions b
        WHERE a.id != b.id
        ORDER by power(a.x - b.x, 2) + power(a.y - b.y, 2) limit 1
    ) id2
    FROM positions a;
END
