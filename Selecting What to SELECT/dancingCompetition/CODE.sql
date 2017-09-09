CREATE PROCEDURE dancingCompetition()
BEGIN
    SELECT * FROM scores
    WHERE ((first_criterion > (SELECT MIN(first_criterion) FROM scores)
          AND first_criterion < (SELECT MAX(first_criterion) FROM scores))
          AND
          (second_criterion > (SELECT MIN(second_criterion) FROM scores)
          AND second_criterion < (SELECT MAX(second_criterion) FROM scores)))
          OR
          ((first_criterion > (SELECT MIN(first_criterion) FROM scores)
          AND first_criterion < (SELECT MAX(first_criterion) FROM scores))
          AND
          (third_criterion > (SELECT MIN(third_criterion) FROM scores)
          AND third_criterion < (SELECT MAX(third_criterion) FROM scores)))
          OR
          ((second_criterion > (SELECT MIN(second_criterion) FROM scores)
          AND second_criterion < (SELECT MAX(second_criterion) FROM scores))
          AND
          (third_criterion > (SELECT MIN(third_criterion) FROM scores)
          AND third_criterion < (SELECT MAX(third_criterion) FROM scores)));
END
