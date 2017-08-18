CREATE PROCEDURE validPhoneNumbers()
BEGIN
	SELECT name, surname, phone_number 
    FROM phone_numbers 
    WHERE (phone_number REGEXP '^(1\-)([0-9][0-9][0-9]\-){2}([0-9]){4}$'
        OR phone_number REGEXP '^(\\(1\\))([0-9][0-9][0-9]\-){2}([0-9]){4}$')
    ORDER BY surname, name;
END
