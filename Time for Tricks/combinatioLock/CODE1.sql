CREATE PROCEDURE combinationLock()
BEGIN
    SELECT
        @c := @c * LENGTH(characters) AS `combinations`
    FROM
        discs,
        (SELECT @c := 1) AS counter
    ORDER BY
        `combinations` DESC
    LIMIT
        1;
END
