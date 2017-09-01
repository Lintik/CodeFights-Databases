CREATE PROCEDURE top5AverageGrade()
BEGIN
    SELECT ROUND(AVG(top.grade), 2) average_grade FROM
    (
        SELECT grade FROM students
        ORDER BY grade DESC
        LIMIT 5
    ) top;
END
