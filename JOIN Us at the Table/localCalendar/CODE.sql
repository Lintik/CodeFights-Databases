CREATE PROCEDURE localCalendar()
BEGIN
    SELECT event_id, IF(hours = '12', 
                        DATE_FORMAT(DATE_ADD(date, INTERVAL timeshift MINUTE), '%Y-%m-%d %h:%i %p'),
                        DATE_FORMAT(DATE_ADD(date, INTERVAL timeshift MINUTE), '%Y-%m-%d %k:%i')) formatted_date
    FROM 
	  (SELECT event_id, date, settings.timeshift, settings.hours FROM events
    LEFT JOIN settings ON events.`user_id` = settings.`user_id`) AS events2
    ORDER BY event_id;
END
