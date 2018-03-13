DROP FUNCTION IF EXISTS get_total;
CREATE FUNCTION get_total(items VARCHAR(45)) RETURNS INT DETERMINISTIC
BEGIN
    RETURN(
        SELECT sum(price) FROM item_prices 
        WHERE FIND_IN_SET(id, REPLACE(items, ';', ','))
    );
END;

CREATE PROCEDURE orderPrices()
BEGIN
    SELECT id, buyer, get_total(items) AS total_price
    FROM orders
    ORDER BY id;
END;
