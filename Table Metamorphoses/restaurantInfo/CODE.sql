CREATE PROCEDURE restaurantInfo()
BEGIN
    ALTER TABLE restaurants ADD description VARCHAR(255) NOT NULL DEFAULT 'TBD';
    ALTER TABLE restaurants ADD active INT NOT NULL DEFAULT 1;

    SELECT * FROM restaurants ORDER BY id;
END
