CREATE PROCEDURE userCountries()
BEGIN
  SELECT users.`id`, COALESCE(cities.`country`, 'unknown') AS `country`
  FROM users
  LEFT JOIN cities ON users.`city` = cities.`city`
  ORDER BY users.`id`;
END 
