CREATE PROCEDURE freeSeats()
BEGIN
    SELECT f.flight_id, CASE WHEN(p.number_of_seats - pu.seat_no) IS NULL 
        THEN p.number_of_seats 
        ELSE (p.number_of_seats - pu.seat_no) END AS free_seats
    FROM flights f
    JOIN planes p
    ON p.plane_id=f.plane_id
    LEFT JOIN (SELECT flight_id, SUM(1) AS seat_no 
               FROM purchases
               GROUP BY flight_id) pu
    ON pu.flight_id=f.flight_id
    GROUP BY f.flight_id;
END
