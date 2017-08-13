CREATE PROCEDURE gradeDistribution()
BEGIN
    SELECT Name, ID FROM Grades
    WHERE (Midterm1 / 2 + Midterm2 / 2) < Final
    ORDER BY SUBSTRING(Name, 1, 3), ID;
END
