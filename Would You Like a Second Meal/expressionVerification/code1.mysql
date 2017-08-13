CREATE PROCEDURE expressionsVerification()
BEGIN
	SELECT * 
        FROM expressions
        WHERE elt(locate(operation, "+-*/"), a+b, a-b, a*b, a/b) = c;
END
