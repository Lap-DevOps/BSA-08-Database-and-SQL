INSERT INTO movie_genres (movie_id, genre_id) VALUES
((SELECT id FROM movies WHERE title = 'Inception'), (SELECT id FROM genres WHERE name = 'Action')),
((SELECT id FROM movies WHERE title = 'Inception'), (SELECT id FROM genres WHERE name = 'Science Fiction')),
((SELECT id FROM movies WHERE title = 'Jurassic Park'), (SELECT id FROM genres WHERE name = 'Adventure')),
((SELECT id FROM movies WHERE title = 'Jurassic Park'), (SELECT id FROM genres WHERE name = 'Science Fiction')),
((SELECT id FROM movies WHERE title = 'Pulp Fiction'), (SELECT id FROM genres WHERE name = 'Crime')),
((SELECT id FROM movies WHERE title = 'Pulp Fiction'), (SELECT id FROM genres WHERE name = 'Drama')),
((SELECT id FROM movies WHERE title = 'The Irishman'), (SELECT id FROM genres WHERE name = 'Crime')),
((SELECT id FROM movies WHERE title = 'The Irishman'), (SELECT id FROM genres WHERE name = 'Drama')),
((SELECT id FROM movies WHERE title = 'Avatar'), (SELECT id FROM genres WHERE name = 'Action')),
((SELECT id FROM movies WHERE title = 'Avatar'), (SELECT id FROM genres WHERE name = 'Adventure'));


INSERT INTO movie_genres (movie_id, genre_id) VALUES
((SELECT id FROM movies WHERE title = 'The Dark Knight'), (SELECT id FROM genres WHERE name = 'Action')),
((SELECT id FROM movies WHERE title = 'The Dark Knight'), (SELECT id FROM genres WHERE name = 'Crime')),
((SELECT id FROM movies WHERE title = 'E.T. the Extra-Terrestrial'), (SELECT id FROM genres WHERE name = 'Adventure')),
((SELECT id FROM movies WHERE title = 'E.T. the Extra-Terrestrial'), (SELECT id FROM genres WHERE name = 'Science Fiction')),
((SELECT id FROM movies WHERE title = 'Kill Bill: Vol. 1'), (SELECT id FROM genres WHERE name = 'Action')),
((SELECT id FROM movies WHERE title = 'Kill Bill: Vol. 1'), (SELECT id FROM genres WHERE name = 'Thriller')),
((SELECT id FROM movies WHERE title = 'Goodfellas'), (SELECT id FROM genres WHERE name = 'Crime')),
((SELECT id FROM movies WHERE title = 'Goodfellas'), (SELECT id FROM genres WHERE name = 'Drama')),
((SELECT id FROM movies WHERE title = 'Titanic'), (SELECT id FROM genres WHERE name = 'Drama')),
((SELECT id FROM movies WHERE title = 'Titanic'), (SELECT id FROM genres WHERE name = 'Romance'));

INSERT INTO movie_genres (movie_id, genre_id) VALUES
((SELECT id FROM movies WHERE title = 'Interstellar'), (SELECT id FROM genres WHERE name = 'Adventure')),
((SELECT id FROM movies WHERE title = 'Interstellar'), (SELECT id FROM genres WHERE name = 'Science Fiction')),
((SELECT id FROM movies WHERE title = 'Saving Private Ryan'), (SELECT id FROM genres WHERE name = 'Action')),
((SELECT id FROM movies WHERE title = 'Saving Private Ryan'), (SELECT id FROM genres WHERE name = 'Drama')),
((SELECT id FROM movies WHERE title = 'Django Unchained'), (SELECT id FROM genres WHERE name = 'Drama')),
((SELECT id FROM movies WHERE title = 'Django Unchained'), (SELECT id FROM genres WHERE name = 'Western')),
((SELECT id FROM movies WHERE title = 'The Wolf of Wall Street'), (SELECT id FROM genres WHERE name = 'Comedy')),
((SELECT id FROM movies WHERE title = 'The Wolf of Wall Street'), (SELECT id FROM genres WHERE name = 'Crime')),
((SELECT id FROM movies WHERE title = 'Terminator 2: Judgment Day'), (SELECT id FROM genres WHERE name = 'Action')),
((SELECT id FROM movies WHERE title = 'Terminator 2: Judgment Day'), (SELECT id FROM genres WHERE name = 'Science Fiction'));
