CREATE PROCEDURE queriesExecution()
BEGIN
    SET @a = CONCAT(
        (SELECT group_concat(
            concat('select "', 
                   query_name, 
                   '" query_name, (', 
                   code,
                   ') val')
            separator ' union ') from queries),
        ' order by 1');

    prepare qry from @a;
    execute qry;
END
