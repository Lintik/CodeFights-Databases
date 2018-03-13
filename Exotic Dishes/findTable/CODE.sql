CREATE PROCEDURE findTable()
BEGIN
    SELECT 
        c.TABLE_NAME AS tab_name, 
        c.COLUMN_NAME AS col_name,
        c.DATA_TYPE AS data_type
    FROM INFORMATION_SCHEMA.COLUMNS c
        JOIN(
            SELECT table_name FROM information_schema.tables 
            where table_name LIKE BINARY 'e%s') tt
    ON tt.table_name=c.table_name
    WHERE c.TABLE_SCHEMA = 'ri_db'
    ORDER BY c.TABLE_NAME, c.COLUMN_NAME;
END
