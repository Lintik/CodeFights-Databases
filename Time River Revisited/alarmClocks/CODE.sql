CREATE PROCEDURE alarmClocks()
BEGIN
    select @a alarm_date
        from userInput, 
             (select 1 union select 2 union select 3 union select 4) x,
             (select 1 union select 2 union select 3 union select 4) y,
             (select 1 union select 2 union select 3 union select 4) z
        where year(ifnull(@a:=date_add(@a, interval 1 week), @a:=input_date)) 
            = year(input_date);
END
