CREATE PROCEDURE expressionsVerification()
BEGIN
    SELECT * FROM expressions 
    WHERE (operation = "+" AND c = a + b)
    OR (operation = "-" AND c = a - b)
    OR (operation = "*" AND c = a * b)
    OR (operation = "/" AND c = a / b);
END
