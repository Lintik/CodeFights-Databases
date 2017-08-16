CREATE PROCEDURE orderOfSuccession()
BEGIN
  SELECT IF(gender = 'F', CONCAT('Queen ', name ), CONCAT('King ', name)) AS name
  FROM Successors
  ORDER BY birthday ASC;
END
