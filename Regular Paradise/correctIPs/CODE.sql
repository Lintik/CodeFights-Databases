CREATE PROCEDURE correctIPs()
BEGIN
	SELECT id, ip
    FROM ips
    WHERE (ip REGEXP '^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){2}([1-9][0-9]\.)(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$'
            OR ip REGEXP '^((25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}([1-9][0-9])$')
    ORDER BY id;
END
