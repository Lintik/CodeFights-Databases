CREATE PROCEDURE alarmClocks()
BEGIN
    SET @date := (SELECT input_date FROM userInput);
    SET @initial := @date;

    DROP TABLE IF EXISTS alarmList;
    CREATE TABLE alarmList
    (
        alarm_date datetime
    );
    
	WHILE YEAR(@date) = YEAR(@initial) DO
        INSERT INTO alarmList ( alarm_date )
            SELECT @date;
        SET @date := @date + INTERVAL 7 DAY;
    END WHILE;
    
    SELECT *
    FROM alarmList;
END
