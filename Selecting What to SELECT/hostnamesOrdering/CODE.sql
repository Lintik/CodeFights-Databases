CREATE PROCEDURE hostnamesOrdering()
BEGIN
    SELECT id, hostname FROM hostnames
    GROUP BY CONCAT(
        SUBSTRING_INDEX(
            CONCAT('...',hostname),'.',-1),
            ' ', SUBSTRING_INDEX(CONCAT('...',hostname),'.',-2),
            ' ', hostname);
END
