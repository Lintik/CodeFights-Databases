CREATE PROCEDURE securityBreach()
BEGIN
	SELECT first_name, second_name, attribute 
    FROM users
    WHERE attribute REGEXP BINARY CONCAT('[a-zA-Z0-9]%', CONCAT(first_name, '_',second_name), '%');
END
