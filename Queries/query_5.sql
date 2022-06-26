/*Return the first and last names of actors who played in a film involving a “Crocodile” and a “Shark”, along with
the release year of the movie, sorted by the actors’ last names.*/
SELECT A.first_name, A.last_name,F.title, F.release_year
FROM `film` AS F, `film_actor` AS FC, `actor` AS A
WHERE A.actor_id = FC.actor_id and f.film_id =FC.film_id AND description LIKE "%Crocodile%" AND f.description LIKE "%Shark%"
ORDER BY last_name;