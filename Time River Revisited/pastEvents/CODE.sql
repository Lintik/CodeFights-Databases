CREATE PROCEDURE pastEvents()
BEGIN
    SELECT Events.`name`, Events.`event_date`
    FROM Events,
        (
            SELECT MAX(Events.`event_date`) `event_date`
            FROM Events
        ) AS most_recent
    WHERE DATEDIFF(most_recent.`event_date`, Events.`event_date`) <= 7
        AND Events.`event_date` != most_recent.`event_date`
    ORDER BY Events.`event_date` DESC;
END
