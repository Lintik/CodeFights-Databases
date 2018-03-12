CREATE PROCEDURE storageOptimization()
BEGIN
    SELECT e.id, e.column_name, e.value 
    FROM(
        SELECT i.id as id, 'name' as column_name, i.name as value
        From workers_info i
        WHERE i.name != '' 
        UNION ALL
        SELECT w.id as id, 'date_of_birth' as column_name,w.date_of_birth as value
        FROM workers_info w
        WHERE w.date_of_birth != '' 
        UNION ALL
        SELECT z.id as id, 'salary' as column_name, z.salary as value
        FROM workers_info z
        WHERE z.salary != ''
    ) e
    ORDER BY e.id, FIELD(e.column_name, 'name', 'date_of_birth', 'salary');
END
