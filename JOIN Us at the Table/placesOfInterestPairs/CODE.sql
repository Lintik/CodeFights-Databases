CREATE PROCEDURE placesOfInterestPairs()
BEGIN
    SELECT a.name place1, b.name place2
    FROM sights a
    JOIN sights b ON a.name < b.name and a.name != b.name and ST_Distance(
        GeomFromText(CONCAT('POINT (', a.x, ' ', a.y, ')')),
        GeomFromText(CONCAT('POINT (', b.x, ' ', b.y, ')'))) < 5
    GROUP BY a.name, b.name;
END
