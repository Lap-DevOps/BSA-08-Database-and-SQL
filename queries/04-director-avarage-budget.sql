WITH directors AS (
    SELECT DISTINCT
        p.id AS person_id,
        p.first_name,
        p.last_name
    FROM persons p
    JOIN movie_directors md ON p.id = md.person_id
    ORDER BY p.id
),
director_movies AS (
    SELECT
        d.person_id,
        d.first_name,
        d.last_name,
        m.id AS movie_id,
        m.title AS movie_title,
        m.budget as budget
    FROM directors d
    JOIN movie_directors md ON d.person_id = md.person_id
    JOIN movies m ON md.movie_id = m.id
)
SELECT
    dm.person_id as "Director ID",
    dm.first_name || ' ' || dm.last_name AS "Director name",
    ROUND(AVG(dm.budget), 0) AS "Average budget"
FROM director_movies dm
GROUP BY dm.person_id, dm.first_name, dm.last_name
ORDER BY dm.person_id;
