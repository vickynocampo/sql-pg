INSERT INTO genres (name, ranking, active) 
VALUES ("Investigacion", 13, 1); 
		
SELECT REPLACE(name, "Investigacion", "Investigacion Cientifica"), id
FROM genres;

DELETE FROM genres 	
WHERE id = 13; 	

SELECT * FROM movies;

SELECT first_name, last_name, rating 
FROM actors;

SELECT title
FROM series;

SELECT first_name, last_name, rating
FROM actors
WHERE rating > 7.5
ORDER BY rating DESC;

SELECT title, rating, awards 
FROM movies 
WHERE rating > 7.5 
AND awards >= 2
ORDER BY rating DESC;

SELECT title, rating
FROM movies
ORDER BY rating ASC;

SELECT title
FROM movies
LIMIT 3;

SELECT title, rating
FROM movies
ORDER BY rating DESC
LIMIT 5
OFFSET 10;

SELECT first_name, last_name, rating
FROM actors
ORDER BY rating DESC
LIMIT 10;

SELECT first_name, last_name, rating
FROM actors
ORDER BY rating DESC
LIMIT 10
OFFSET 30;

SELECT title, rating
FROM movies
WHERE title LIKE"%Harry Potter%";

SELECT first_name, last_name
FROM actors
WHERE first_name LIKE "SAM%";

SELECT title, EXTRACT(YEAR FROM release_date) AS estreno
FROM movies
WHERE EXTRACT(YEAR FROM release_date) >= 2004 AND EXTRACT(YEAR FROM release_date) <= 2008;