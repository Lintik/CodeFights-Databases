CREATE PROCEDURE salaryDifference()
BEGIN
    SELECT
        IFNULL(SUM(employees.`salary` = `max`) * `max`
        - SUM(employees.`salary` = `min`) * `min`, 0)
        AS `difference`
    FROM
        employees,
        (
            SELECT
                MAX(`salary`) AS `max`,
                MIN(`salary`) AS `min`
            FROM
                employees
        ) AS max_min;
END
