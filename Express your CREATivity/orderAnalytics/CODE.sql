DROP PROCEDURE IF EXISTS orderAnalytics;
CREATE PROCEDURE orderAnalytics()
BEGIN
    
    CREATE OR REPLACE VIEW order_analytics AS
    SELECT id,
        year(order_date) as year,
        quarter(order_date) as quarter,
        type,
        quantity * price as total_price
    FROM orders;

    SELECT *
    FROM order_analytics
    ORDER by id;
END;
