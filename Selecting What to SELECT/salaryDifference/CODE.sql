CREATE PROCEDURE salaryDifference()
BEGIN
        SELECT IF(COUNT(*) != 0, ((mx.salary * mx.count) - (mn.salary * mn.count)), 0) difference FROM
        (
        SELECT salary , COUNT(*) count FROM employees
        GROUP BY salary
        ORDER BY salary DESC
        LIMIT 1
        ) mx,
        (
        SELECT salary, COUNT(*) count FROM employees
        GROUP BY salary
        ORDER BY salary
        LIMIT 1
        ) mn;
END
