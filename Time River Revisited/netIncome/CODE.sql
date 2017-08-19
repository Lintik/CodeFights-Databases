CREATE PROCEDURE netIncome()
BEGIN
    SELECT accounting2.`year`, accounting2.`quarter`, SUM(accounting2.`profit` - accounting2.`loss`) AS net_profit
    FROM (
            SELECT YEAR(accounting.`date`) AS year, QUARTER(accounting.`date`) AS quarter, CAST(accounting.`profit` AS SIGNED) AS profit, CAST(accounting.`loss` AS SIGNED) AS loss
            FROM accounting
        ) AS accounting2
    GROUP BY accounting2.`year`, accounting2.`quarter`;
END
