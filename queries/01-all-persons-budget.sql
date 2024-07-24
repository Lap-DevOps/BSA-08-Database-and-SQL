WITH actors AS (
    SELECT p.id AS actor_id, p.first_name, p.last_name
    FROM persons p
    LEFT JOIN movie_directors md ON p.id = md.person_id
    WHERE md.person_id IS NULL
    ORDER BY p.id
),

character_movies AS (
    SELECT a.actor_id,
           a.first_name AS first_name,
           a.last_name AS last_name,
           m.budget AS movie_budget
    FROM movies m
    JOIN movie_characters mc ON m.id = mc.movie_id
    JOIN characters c ON mc.character_id = c.id
    JOIN actors a ON c.person_id = a.actor_id
),

non_character_movies AS (
    SELECT a.actor_id,
           a.first_name AS first_name,
           a.last_name AS last_name,
           m.budget AS movie_budget
    FROM movies m
    JOIN movie_appearances ma ON m.id = ma.movie_id
    JOIN actors a ON ma.person_id = a.actor_id
    WHERE ma.is_non_character = TRUE
)

SELECT actor_id AS "ID",
       first_name AS "First name",
       last_name AS "Last name",
       SUM(movie_budget) AS "Total movies budget"
FROM (
    SELECT actor_id, first_name, last_name, movie_budget
    FROM character_movies
    UNION ALL
    SELECT actor_id, first_name, last_name, movie_budget
    FROM non_character_movies
) combined_movies
GROUP BY actor_id, first_name, last_name
ORDER BY actor_id;
