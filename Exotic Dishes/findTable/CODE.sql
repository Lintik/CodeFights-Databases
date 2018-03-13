CREATE PROCEDURE findTable()
BEGIN
    SELECT 
        a.TABLE_NAME AS tab_name, 
        a.COLUMN_NAME AS col_name,
        a.DATA_TYPE AS data_type
    FROM INFORMATION_SCHEMA.COLUMNS a
        JOIN(
            SELECT table_name FROM information_schema.tables 
            where table_name LIKE BINARY 'e%s') b
    ON b.table_name=a.table_name
    WHERE a.TABLE_SCHEMA = 'ri_db'
    ORDER BY a.TABLE_NAME, a.COLUMN_NAME;
END
