WITH movie_details AS (
    SELECT
        m.id AS movie_id,
        m.title AS movie_title,
        m.release_date,
        m.duration,
        m.description,
        f.id AS poster_id,
        f.file_name AS poster_file_name,
        f.mime_type AS poster_mime_type,
        f.file_key AS poster_file_key,
        f.url AS poster_url
    FROM movies m
    LEFT JOIN files f ON m.poster_file_id = f.id
    WHERE m.id = 1
),
director_details AS (
    SELECT
        md.movie_id,
        p.id AS director_id,
        p.first_name AS director_first_name,
        p.last_name AS director_last_name,
        json_build_object(
            'id', pf.id,
            'file_name', pf.file_name,
            'mime_type', pf.mime_type,
            'file_key', pf.file_key,
            'url', pf.url
        ) AS director_photo
    FROM movie_directors md
    JOIN persons p ON md.person_id = p.id
    LEFT JOIN files pf ON p.main_photo_id = pf.id
    WHERE md.movie_id = 1
),
actor_details AS (
    SELECT
        mc.movie_id,
        json_agg(
            json_build_object(
                'ID', p.id,
                'First name', p.first_name,
                'Last name', p.last_name,
                'Photo', json_build_object(
                    'id', af.id,
                    'file_name', af.file_name,
                    'mime_type', af.mime_type,
                    'file_key', af.file_key,
                    'url', af.url
                )
            )
        ) AS actors
    FROM movie_characters mc
    JOIN characters c ON mc.character_id = c.id
    JOIN persons p ON c.person_id = p.id
    LEFT JOIN files af ON p.main_photo_id = af.id
    WHERE mc.movie_id = 1
    GROUP BY mc.movie_id
),
genre_details AS (
    SELECT
        mg.movie_id,
        json_agg(
            json_build_object(
                'ID', g.id,
                'Name', g.name
            )
        ) AS genres
    FROM movie_genres mg
    JOIN genres g ON mg.genre_id = g.id
    WHERE mg.movie_id = 1
    GROUP BY mg.movie_id
)
SELECT
    md.movie_id AS "ID",
    md.movie_title AS "Title",
    md.release_date AS "Release date",
    md.duration AS "Duration",
    md.description AS "Description",
    json_build_object(
        'id', md.poster_id,
        'file_name', md.poster_file_name,
        'mime_type', md.poster_mime_type,
        'file_key', md.poster_file_key,
        'url', md.poster_url
    ) AS "Poster",
    json_build_object(
        'ID', dd.director_id,
        'First name', dd.director_first_name,
        'Last name', dd.director_last_name,
        'Photo', dd.director_photo
    ) AS "Director",
    ad.actors AS "Actors",
    gd.genres AS "Genres"
FROM movie_details md
LEFT JOIN director_details dd ON md.movie_id = dd.movie_id
LEFT JOIN actor_details ad ON md.movie_id = ad.movie_id
LEFT JOIN genre_details gd ON md.movie_id = gd.movie_id;
