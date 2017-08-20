CREATE PROCEDURE alarmClocks()
BEGIN
    DECLARE d DATETIME;
    DECLARE y YEAR;
    DECLARE q TEXT;
    SET d = (SELECT input_date FROM userInput);
    SET y = YEAR(d);
    SET q = CONCAT('SELECT "', d, '" AS alarm_date');
    SET d = DATE_ADD(d, INTERVAL 7 DAY);
    WHILE YEAR(d) = y DO
        SET q = CONCAT(q, ' UNION SELECT "', d, '" AS alarm_date');
        SET d = DATE_ADD(d, INTERVAL 7 DAY);
    END WHILE;
    SET @x = q;
    PREPARE s FROM @x;
    EXECUTE s;
END
