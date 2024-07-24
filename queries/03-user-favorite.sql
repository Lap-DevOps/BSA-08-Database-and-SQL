SELECT
    u.id AS "ID",
    u.username AS "Username",
    array_agg(ufm.movie_id) AS "Favorite movie IDs"
FROM
    users u
LEFT JOIN
    user_favorite_movies ufm ON u.id = ufm.user_id
GROUP BY
    u.id, u.username
ORDER BY
    "ID";
