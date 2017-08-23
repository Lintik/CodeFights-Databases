CREATE PROCEDURE routeLength()
BEGIN
	SELECT ROUND(GLENGTH(GeomFromText(
            CONCAT('LINESTRING(', GROUP_CONCAT( CONCAT(x, ' ', y) SEPARATOR ','),')'))), 9) AS total
    FROM cities;
END
