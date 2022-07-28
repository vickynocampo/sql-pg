/* Microdesafio 1 */
SELECT genres.name AS genero, series.title AS serie, seasons.title AS temporada, episodes.title AS episodio, CONCAT(actors.first_name, " ", actors.last_name) AS actor
FROM series
INNER JOIN genres ON genre_id = genres.id
INNER JOIN seasons ON series.id = serie_id
INNER JOIN episodes ON seasons.id = episodes.season_id
INNER JOIN actor_episode ON episodes.id = actor_episode.episode_id
INNER JOIN actors ON actors.id = actor_episode.actor_id
ORDER BY genero ASC, serie ASC, temporada ASC, episodio ASC, actor ASC;

/* Microdesafio 2 */
SELECT DISTINCT(CONCAT(actors.first_name, " ", actors.last_name)) AS actores_star_wars
FROM movies
INNER JOIN actor_movie ON movies.id = actor_movie.movie_id
INNER JOIN actors ON actors.id = actor_movie.actor_id
WHERE movies.title LIKE "%guerra%";

/* Microdesafio 3 */
SELECT title AS pelicula, COALESCE(genres.name, "no tiene genero") AS genero
FROM movies
LEFT JOIN genres ON genre_id = genres.id;

/* Microdesafio 4 */
SELECT series.title AS serie, DATEDIFF(end_date, release_date) AS duracion
FROM series;

/* Microdesafio 5 */
SELECT actors.first_name AS actores
FROM actors
HAVING LENGTH(actors.first_name)  > 6
ORDER BY actores ASC;
/*¨*/
SELECT COUNT(episodes.id) AS total_episodios_BD
FROM episodes;
/*¨*/
SELECT series.title AS serie, COUNT(seasons.id) AS cantidad_temporadas
FROM series
INNER JOIN seasons ON series.id = seasons.serie_id
GROUP BY serie 
ORDER BY cantidad_temporadas DESC;
/*¨*/
SELECT genres.name AS genero, COUNT(movies.title) AS cantidad_peliculas
FROM genres
INNER JOIN movies ON genres.id = movies.genre_id
GROUP BY genero
HAVING cantidad_peliculas >= 3;