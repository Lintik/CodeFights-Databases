CREATE PROCEDURE checkExpenditure()
BEGIN
     SELECT id, IF(loss < 0, 0, loss) loss FROM
     (SELECT id, ((SELECT SUM(expenditure_sum)
                FROM expenditure_plan
                WHERE (WEEK(monday_date)) >= allowable_expenditure.left_bound 
                     AND (WEEK(monday_date)) <= allowable_expenditure.right_bound
                ) - value) loss
     FROM allowable_expenditure) b;
END
