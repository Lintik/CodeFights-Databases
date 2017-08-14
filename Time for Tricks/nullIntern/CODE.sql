CREATE PROCEDURE nullIntern()
BEGIN
	SELECT COUNT(id) number_of_nulls FROM departments
	WHERE  description IS NULL
	OR UPPER(TRIM(description)) = 'NULL'
	OR UPPER(TRIM(description)) = 'NIL'
	OR TRIM(description) = '-'; 
END
