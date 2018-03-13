CREATE PROCEDURE filmLibrary()
BEGIN
	SELECT a.actor as actor, a.age as age 
  FROM actor_ages a JOIN starring_actors s ON  s.actor = a.actor
  JOIN movies m ON s.movie_name =  m.movie
	WHERE (m.genre) = (
        SELECT genre FROM movies
        GROUP BY genre
        ORDER BY count(movie) DESC
        LIMIT 1
  )
  ORDER BY a.age DESC, a.actor;
END
