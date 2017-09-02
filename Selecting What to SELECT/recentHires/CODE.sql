CREATE PROCEDURE recentHires()
BEGIN
    SELECT name as names FROM
    (
        (SELECT id, name, 1 as filter FROM
        (
            SELECT id, name FROM pr_department
            ORDER BY date_joined DESC
            LIMIT 5
        ) names1)
        UNION
        (SELECT id, name, 2 as filter FROM
        (
            SELECT id, name FROM it_department
            ORDER BY date_joined DESC
            LIMIT 5
        ) names2)
        UNION
        (SELECT id, name, 3 as filter FROM
        (
            SELECT id, name FROM sales_department
            ORDER BY date_joined DESC
            LIMIT 5
        ) names3)
    ) names4

    ORDER BY filter, names;

END
