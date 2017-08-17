CREATE PROCEDURE placesOfInterest()
BEGIN
	SELECT country,
    sum( if( leisure_activity_type = 'Adventure park', number_of_places, 0 ) ) AS adventure_park,  
    sum( if( leisure_activity_type = 'Golf', number_of_places, 0 ) ) AS golf,
    sum( if( leisure_activity_type = 'River cruise', number_of_places, 0 ) ) AS river_cruise,
    sum( if( leisure_activity_type = 'Kart racing', number_of_places, 0 ) ) AS kart_racing
    FROM countryActivities
    GROUP BY country;
END
