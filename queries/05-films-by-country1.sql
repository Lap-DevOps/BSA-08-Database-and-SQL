WITH recent_movies AS (
    SELECT
        m.id AS movie_id,
        m.title AS movie_title,
        m.release_date,
        m.duration,
        m.description,
        f.id AS poster_id,
        f.file_name,
        f.mime_type,
        f.file_key,
        f.url
    FROM movies m
    LEFT JOIN files f ON m.poster_file_id = f.id
    WHERE
        m.country_id = 1
        AND m.release_date >= '2022-01-01'
        AND m.duration > INTERVAL '2 hours 15 minutes'
),
movie_genres AS (
    SELECT DISTINCT
        mg.movie_id
    FROM movie_genres mg
    JOIN genres g ON mg.genre_id = g.id
    WHERE g.name IN ('Action', 'Drama')
),
directors AS (
    SELECT
        md.movie_id,
        p.id AS director_id,
        p.first_name AS director_first_name,
        p.last_name AS director_last_name
    FROM movie_directors md
    JOIN persons p ON md.person_id = p.id
)
SELECT
    rm.movie_id AS "ID",
    rm.movie_title AS "Title",
    rm.release_date AS "Release date",
    rm.duration AS "Duration",
    rm.description AS "Description",
    json_build_object(
        'id', rm.poster_id,
        'file_name', rm.file_name,
        'mime_type', rm.mime_type,
        'file_key', rm.file_key,
        'url', rm.url
    ) AS "Poster",
    json_build_object(
        'ID', d.director_id,
        'First name', d.director_first_name,
        'Last name', d.director_last_name
    ) AS "Director"
FROM recent_movies rm
JOIN movie_genres mg ON rm.movie_id = mg.movie_id
LEFT JOIN directors d ON rm.movie_id = d.movie_id
ORDER BY rm.movie_id;
