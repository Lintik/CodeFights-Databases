CREATE PROCEDURE dancingCompetition()
BEGIN
    CREATE OR REPLACE VIEW z(a,b,c,d) AS SELECT * FROM scores;
    SELECT a.*
        FROM scores a, z
        GROUP BY 1
        HAVING (first_criterion  in (min(b), max(b)))
             + (second_criterion in (min(c), max(c)))
             + (third_criterion  in (min(d), max(d))) < 2;
END
