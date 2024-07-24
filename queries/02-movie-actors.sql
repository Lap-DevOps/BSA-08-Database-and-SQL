WITH recent_movies AS (
    SELECT id, title
    FROM movies
    WHERE release_date >= CURRENT_DATE - INTERVAL '5 years'
),
movie_characters_with_persons AS (
    SELECT
        rm.id AS movie_id,
        p.id AS person_id
    FROM recent_movies rm
    JOIN movie_characters mc ON rm.id = mc.movie_id
    JOIN characters c ON mc.character_id = c.id
    JOIN persons p ON c.person_id = p.id
),
movie_appearances_count AS (
    SELECT
        ma.movie_id,
        COUNT(DISTINCT ma.person_id) AS number_of_appearances
    FROM movie_appearances ma
    WHERE ma.movie_id IN (SELECT id FROM recent_movies)
    GROUP BY ma.movie_id
)
SELECT
    rm.id AS ID,
    rm.title AS Title,
    COUNT(DISTINCT mcp.person_id) + COALESCE(mac.number_of_appearances, 0) AS "Actors count"
FROM recent_movies rm
LEFT JOIN movie_characters_with_persons mcp ON rm.id = mcp.movie_id
LEFT JOIN movie_appearances_count mac ON rm.id = mac.movie_id
GROUP BY rm.id, rm.title, mac.number_of_appearances;
