CREATE PROCEDURE suspectsInvestigation()
BEGIN
    SELECT
        id,
        name,
        surname
    FROM
        Suspect
    WHERE
        height <= 170
        AND LEFT(name, 1) = 'B'
        AND surname LIKE 'Gre_n';
END
