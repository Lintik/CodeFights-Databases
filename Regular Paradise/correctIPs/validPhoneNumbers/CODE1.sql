CREATE PROCEDURE validPhoneNumbers()
    SELECT *
    FROM phone_numbers
    WHERE 
    (
        phone_number LIKE "1-___-___-____"
        OR
        phone_number LIKE "(1)___-___-____"
    )
    AND phone_number REGEXP "^[\(\)0-9-]*$"
    ORDER BY surname;
