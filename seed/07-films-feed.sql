INSERT INTO files (file_name, mime_type, file_key, url) VALUES
('inception_poster.png', 'image/png', 'inception_poster_key', 'http://example.com/inception_poster.png'),
('jurassic_park_poster.png', 'image/png', 'jurassic_park_poster_key', 'http://example.com/jurassic_park_poster.png'),
('pulp_fiction_poster.png', 'image/png', 'pulp_fiction_poster_key', 'http://example.com/pulp_fiction_poster.png'),
('the_irishman_poster.png', 'image/png', 'the_irishman_poster_key', 'http://example.com/the_irishman_poster.png'),
('avatar_poster.png', 'image/png', 'avatar_poster_key', 'http://example.com/avatar_poster.png'),
('the_dark_knight_poster.png', 'image/png', 'the_dark_knight_poster_key', 'http://example.com/the_dark_knight_poster.png'),
('et_poster.png', 'image/png', 'et_poster_key', 'http://example.com/et_poster.png'),
('kill_bill_vol1_poster.png', 'image/png', 'kill_bill_vol1_poster_key', 'http://example.com/kill_bill_vol1_poster.png'),
('goodfellas_poster.png', 'image/png', 'goodfellas_poster_key', 'http://example.com/goodfellas_poster.png'),
('titanic_poster.png', 'image/png', 'titanic_poster_key', 'http://example.com/titanic_poster.png'),
('interstellar_poster.png', 'image/png', 'interstellar_poster_key', 'http://example.com/interstellar_poster.png'),
('saving_private_ryan_poster.png', 'image/png', 'saving_private_ryan_poster_key', 'http://example.com/saving_private_ryan_poster.png'),
('django_unchained_poster.png', 'image/png', 'django_unchained_poster_key', 'http://example.com/django_unchained_poster.png'),
('the_wolf_of_wall_street_poster.png', 'image/png', 'the_wolf_of_wall_street_poster_key', 'http://example.com/the_wolf_of_wall_street_poster.png'),
('terminator_2_poster.png', 'image/png', 'terminator_2_poster_key', 'http://example.com/terminator_2_poster.png');


INSERT INTO movies (title, description, budget, release_date, duration, country_id, poster_file_id) VALUES
('Inception', 'A mind-bending thriller set within the architecture of the mind.', 160000000, '2010-07-16', '02:28:00', 1, (SELECT id FROM files WHERE file_key = 'inception_poster_key')),
('Jurassic Park', 'A groundbreaking film that brings dinosaurs back to life.', 63000000, '1993-06-11', '02:07:00', 2, (SELECT id FROM files WHERE file_key = 'jurassic_park_poster_key')),
('Pulp Fiction', 'A film that interweaves multiple storylines in the underworld of LA.', 8000000, '1994-10-14', '02:34:00', 3, (SELECT id FROM files WHERE file_key = 'pulp_fiction_poster_key')),
('The Irishman', 'A mob hitman recalls his possible involvement with the slaying of Jimmy Hoffa.', 159000000, '2019-11-27', '03:29:00', 1, (SELECT id FROM files WHERE file_key = 'the_irishman_poster_key')),
('Avatar', 'A paraplegic Marine dispatched to the moon Pandora.', 237000000, '2009-12-18', '02:42:00', 2, (SELECT id FROM files WHERE file_key = 'avatar_poster_key')),
('The Dark Knight', 'Batman faces the Joker in Gotham City.', 185000000, '2008-07-18', '02:32:00', 1, (SELECT id FROM files WHERE file_key = 'the_dark_knight_poster_key')),
('E.T. the Extra-Terrestrial', 'A troubled child summons the courage to help a friendly alien.', 10500000, '1982-06-11', '01:55:00', 2, (SELECT id FROM files WHERE file_key = 'et_poster_key')),
('Kill Bill: Vol. 1', 'A former assassin, known simply as The Bride, wakes from a coma.', 30000000, '2003-10-10', '01:51:00', 3, (SELECT id FROM files WHERE file_key = 'kill_bill_vol1_poster_key')),
('Goodfellas', 'The story of Henry Hill and his life in the mob.', 25000000, '1990-09-19', '02:26:00', 1, (SELECT id FROM files WHERE file_key = 'goodfellas_poster_key')),
('Titanic', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist.', 200000000, '1997-12-19', '03:14:00', 2, (SELECT id FROM files WHERE file_key = 'titanic_poster_key')),
('Interstellar', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity''s survival.', 165000000, '2014-11-07', '02:49:00', 1, (SELECT id FROM files WHERE file_key = 'interstellar_poster_key')),
('Saving Private Ryan', 'Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper.', 70000000, '1998-07-24', '02:49:00', 2, (SELECT id FROM files WHERE file_key = 'saving_private_ryan_poster_key')),
('Django Unchained', 'With the help of a German bounty-hunter, a freed slave sets out to rescue his wife.', 100000000, '2012-12-25', '02:45:00', 3, (SELECT id FROM files WHERE file_key = 'django_unchained_poster_key')),
('The Wolf of Wall Street', 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.', 100000000, '2013-12-25', '03:00:00', 1, (SELECT id FROM files WHERE file_key = 'the_wolf_of_wall_street_poster_key')),
('Terminator 2: Judgment Day', 'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son.', 102000000, '1991-07-03', '02:17:00', 2, (SELECT id FROM files WHERE file_key = 'terminator_2_poster_key'));

INSERT INTO movie_directors (movie_id, person_id) VALUES
((SELECT id FROM movies WHERE title = 'Inception'), (SELECT id FROM persons WHERE first_name = 'Christopher' AND last_name = 'Nolan')),
((SELECT id FROM movies WHERE title = 'Jurassic Park'), (SELECT id FROM persons WHERE first_name = 'Steven' AND last_name = 'Spielberg')),
((SELECT id FROM movies WHERE title = 'Pulp Fiction'), (SELECT id FROM persons WHERE first_name = 'Quentin' AND last_name = 'Tarantino')),
((SELECT id FROM movies WHERE title = 'The Irishman'), (SELECT id FROM persons WHERE first_name = 'Martin' AND last_name = 'Scorsese')),
((SELECT id FROM movies WHERE title = 'Avatar'), (SELECT id FROM persons WHERE first_name = 'James' AND last_name = 'Cameron')),
((SELECT id FROM movies WHERE title = 'The Dark Knight'), (SELECT id FROM persons WHERE first_name = 'Christopher' AND last_name = 'Nolan')),
((SELECT id FROM movies WHERE title = 'E.T. the Extra-Terrestrial'), (SELECT id FROM persons WHERE first_name = 'Steven' AND last_name = 'Spielberg')),
((SELECT id FROM movies WHERE title = 'Kill Bill: Vol. 1'), (SELECT id FROM persons WHERE first_name = 'Quentin' AND last_name = 'Tarantino')),
((SELECT id FROM movies WHERE title = 'Goodfellas'), (SELECT id FROM persons WHERE first_name = 'Martin' AND last_name = 'Scorsese')),
((SELECT id FROM movies WHERE title = 'Titanic'), (SELECT id FROM persons WHERE first_name = 'James' AND last_name = 'Cameron')),
((SELECT id FROM movies WHERE title = 'Interstellar'), (SELECT id FROM persons WHERE first_name = 'Christopher' AND last_name = 'Nolan')),
((SELECT id FROM movies WHERE title = 'Saving Private Ryan'), (SELECT id FROM persons WHERE first_name = 'Steven' AND last_name = 'Spielberg')),
((SELECT id FROM movies WHERE title = 'Django Unchained'), (SELECT id FROM persons WHERE first_name = 'Quentin' AND last_name = 'Tarantino')),
((SELECT id FROM movies WHERE title = 'The Wolf of Wall Street'), (SELECT id FROM persons WHERE first_name = 'Martin' AND last_name = 'Scorsese')),
((SELECT id FROM movies WHERE title = 'Terminator 2: Judgment Day'), (SELECT id FROM persons WHERE first_name = 'James' AND last_name = 'Cameron'));
--
--
--
-- INSERT INTO characters (name, description, role) VALUES
-- ('Cobb', 'A skilled thief, the absolute best in the dangerous art of extraction.', 'leading'),
-- ('Dr. Alan Grant', 'A paleontologist who is among the first to see living dinosaurs.', 'leading'),
-- ('Vincent Vega', 'A hitman working for mob boss Marsellus Wallace.', 'leading'),
-- ('Frank Sheeran', 'A hitman involved in the slaying of Jimmy Hoffa.', 'leading'),
-- ('Jake Sully', 'A paraplegic Marine dispatched to the moon Pandora.', 'leading'),
-- ('Bruce Wayne/Batman', 'A billionaire socialite who fights crime as the masked vigilante Batman.', 'leading'),
-- ('Elliott', 'A troubled child who befriends an extraterrestrial.', 'leading'),
-- ('The Bride', 'A former assassin seeking revenge on her ex-colleagues.', 'leading'),
-- ('Henry Hill', 'A mobster who narrates his life in the mob.', 'leading'),
-- ('Jack Dawson', 'A poor artist who wins a ticket to the Titanic.', 'leading'),
-- ('T-1000', 'A shapeshifting android assassin.', 'supporting'),
-- ('Alien Queen', 'The mother of the Xenomorph species.', 'supporting');
--
--
-- INSERT INTO character_person (character_id, person_id) VALUES
-- ((SELECT id FROM characters WHERE name = 'Cobb'), (SELECT id FROM persons WHERE first_name = 'Leonardo' AND last_name = 'DiCaprio')),
-- ((SELECT id FROM characters WHERE name = 'Dr. Alan Grant'), (SELECT id FROM persons WHERE first_name = 'Sam' AND last_name = 'Neill')),
-- ((SELECT id FROM characters WHERE name = 'Vincent Vega'), (SELECT id FROM persons WHERE first_name = 'John' AND last_name = 'Travolta')),
-- ((SELECT id FROM characters WHERE name = 'Frank Sheeran'), (SELECT id FROM persons WHERE first_name = 'Robert' AND last_name = 'De Niro')),
-- ((SELECT id FROM characters WHERE name = 'Jake Sully'), (SELECT id FROM persons WHERE first_name = 'Sam' AND last_name = 'Worthington')),
-- ((SELECT id FROM characters WHERE name = 'Bruce Wayne/Batman'), (SELECT id FROM persons WHERE first_name = 'Christian' AND last_name = 'Bale')),
-- ((SELECT id FROM characters WHERE name = 'Elliott'), (SELECT id FROM persons WHERE first_name = 'Henry' AND last_name = 'Thomas')),
-- ((SELECT id FROM characters WHERE name = 'The Bride'), (SELECT id FROM persons WHERE first_name = 'Uma' AND last_name = 'Thurman')),
-- ((SELECT id FROM characters WHERE name = 'Henry Hill'), (SELECT id FROM persons WHERE first_name = 'Ray' AND last_name = 'Liotta')),
-- ((SELECT id FROM characters WHERE name = 'Jack Dawson'), (SELECT id FROM persons WHERE first_name = 'Leonardo' AND last_name = 'DiCaprio'));
--
--
-- INSERT INTO movie_person (movie_id, person_id, character_id) VALUES
-- ((SELECT id FROM movies WHERE title = 'Inception'), (SELECT id FROM persons WHERE first_name = 'Leonardo' AND last_name = 'DiCaprio'), (SELECT id FROM characters WHERE name = 'Cobb')),
-- ((SELECT id FROM movies WHERE title = 'Jurassic Park'), (SELECT id FROM persons WHERE first_name = 'Sam' AND last_name = 'Neill'), (SELECT id FROM characters WHERE name = 'Dr. Alan Grant')),
-- ((SELECT id FROM movies WHERE title = 'Pulp Fiction'), (SELECT id FROM persons WHERE first_name = 'John' AND last_name = 'Travolta'), (SELECT id FROM characters WHERE name = 'Vincent Vega')),
-- ((SELECT id FROM movies WHERE title = 'The Irishman'), (SELECT id FROM persons WHERE first_name = 'Robert' AND last_name = 'De Niro'), (SELECT id FROM characters WHERE name = 'Frank Sheeran')),
-- ((SELECT id FROM movies WHERE title = 'Avatar'), (SELECT id FROM persons WHERE first_name = 'Sam' AND last_name = 'Worthington'), (SELECT id FROM characters WHERE name = 'Jake Sully')),
-- ((SELECT id FROM movies WHERE title = 'The Dark Knight'), (SELECT id FROM persons WHERE first_name = 'Christian' AND last_name = 'Bale'), (SELECT id FROM characters WHERE name = 'Bruce Wayne/Batman')),
-- ((SELECT id FROM movies WHERE title = 'E.T. the Extra-Terrestrial'), (SELECT id FROM persons WHERE first_name = 'Henry' AND last_name = 'Thomas'), (SELECT id FROM characters WHERE name = 'Elliott')),
-- ((SELECT id FROM movies WHERE title = 'Kill Bill: Vol. 1'), (SELECT id FROM persons WHERE first_name = 'Uma' AND last_name = 'Thurman'), (SELECT id FROM characters WHERE name = 'The Bride')),
-- ((SELECT id FROM movies WHERE title = 'Goodfellas'), (SELECT id FROM persons WHERE first_name = 'Ray' AND last_name = 'Liotta'), (SELECT id FROM characters WHERE name = 'Henry Hill')),
-- ((SELECT id FROM movies WHERE title = 'Titanic'), (SELECT id FROM persons WHERE first_name = 'Leonardo' AND last_name = 'DiCaprio'), (SELECT id FROM characters WHERE name = 'Jack Dawson'));

-- INSERT INTO characters (name, description, role) VALUES
-- ('T-1000', 'A shapeshifting android assassin.', 'supporting'),
-- ('Alien Queen', 'The mother of the Xenomorph species.', 'supporting');
--
-- INSERT INTO movie_person (movie_id, character_id) VALUES
-- ((SELECT id FROM movies WHERE title = 'Terminator 2: Judgment Day'), (SELECT id FROM characters WHERE name = 'T-1000')),
-- ((SELECT id FROM movies WHERE title = 'Aliens'), (SELECT id FROM characters WHERE name = 'Alien Queen'));
