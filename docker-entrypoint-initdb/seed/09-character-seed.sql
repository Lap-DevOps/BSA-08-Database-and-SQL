-- Добавление новых персонажей
INSERT INTO characters (name, description, role, person_id) VALUES
-- Персонажи для фильма "Inception"
('Eames', 'A forger and member of Cobb''s team.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Tom' AND last_name = 'Hardy')),
('Mal Cobb', 'Cobb''s deceased wife, who appears in his dreams.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Marion' AND last_name = 'Cotillard')),
-- Персонажи для фильма "Jurassic Park"
('Dr. Ellie Sattler', 'A paleobotanist who is invited to Jurassic Park.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Laura' AND last_name = 'Dern')),
('John Hammond', 'The founder of Jurassic Park.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Richard' AND last_name = 'Attenborough')),
-- Персонажи для фильма "Pulp Fiction"
('Jules Winnfield', 'A hitman working with Vincent Vega.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Samuel' AND last_name = 'Jackson')),
('Mia Wallace', 'The wife of mob boss Marsellus Wallace.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Uma' AND last_name = 'Thurman')),
-- Персонажи для фильма "The Irishman"
('Jimmy Hoffa', 'A powerful labor union leader.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Al' AND last_name = 'Pacino')),
('Russell Bufalino', 'A Pennsylvania mob boss.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Joe' AND last_name = 'Pesci')),
-- Персонажи для фильма "Avatar"
('Dr. Grace Augustine', 'An exobiologist and head of the Avatar Program.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Sigourney' AND last_name = 'Weaver')),
('Colonel Miles Quaritch', 'The head of security for the human mining colony on Pandora.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Stephen' AND last_name = 'Lang')),
-- Персонажи для фильма "The Dark Knight"
('Harvey Dent', 'The district attorney of Gotham City, who becomes Two-Face.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Aaron' AND last_name = 'Eckhart')),
('Rachel Dawes', 'Assistant district attorney and Bruce Wayne''s childhood friend.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Maggie' AND last_name = 'Gyllenhaal')),
-- Персонажи для фильма "E.T. the Extra-Terrestrial"
('Mary', 'Elliott''s mother.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Dee' AND last_name = 'Wallace')),
('Michael', 'Elliott''s older brother.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Robert' AND last_name = 'MacNaughton')),
-- Персонажи для фильма "Kill Bill: Vol. 1"
('O-Ren Ishii', 'A former assassin and now the head of the Tokyo yakuza.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Lucy' AND last_name = 'Liu')),
('Vernita Green', 'A former assassin who is now a homemaker.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Vivica' AND last_name = 'Fox')),
-- Персонажи для фильма "Goodfellas"
('Tommy DeVito', 'A mob associate and friend of Henry Hill.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Joe' AND last_name = 'Pesci')),
('Karen Hill', 'Henry Hill''s wife.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Lorraine' AND last_name = 'Bracco')),
-- Персонажи для фильма "Titanic"
('Rose DeWitt Bukater', 'A young aristocratic woman.', 'leading', (SELECT id FROM persons WHERE first_name = 'Kate' AND last_name = 'Winslet')),
('Cal Hockley', 'Rose''s wealthy but arrogant fiancé.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Billy' AND last_name = 'Zane')),
-- Персонажи для фильма "Interstellar"
('Cooper', 'A former NASA pilot who leads the mission to save humanity.', 'leading', (SELECT id FROM persons WHERE first_name = 'Matthew' AND last_name = 'McConaughey')),
('Brand', 'A scientist who joins Cooper on the mission.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Anne' AND last_name = 'Hathaway')),
-- Персонажи для фильма "Saving Private Ryan"
('Captain John H. Miller', 'The protagonist, leading the mission to save Private Ryan.', 'leading', (SELECT id FROM persons WHERE first_name = 'Tom' AND last_name = 'Hanks')),
('Private James Francis Ryan', 'The soldier to be saved.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Matt' AND last_name = 'Damon')),
-- Персонажи для фильма "Django Unchained"
('Django', 'A freed slave who becomes a bounty hunter.', 'leading', (SELECT id FROM persons WHERE first_name = 'Jamie' AND last_name = 'Foxx')),
('Dr. King Schultz', 'A bounty hunter who frees Django.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Christoph' AND last_name = 'Waltz')),
-- Персонажи для фильма "The Wolf of Wall Street"
('Jordan Belfort', 'A stockbroker who engages in corrupt activities.', 'leading', (SELECT id FROM persons WHERE first_name = 'Leonardo' AND last_name = 'DiCaprio')),
('Donnie Azoff', 'Jordan''s business partner.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Jonah' AND last_name = 'Hill')),
-- Персонажи для фильма "Terminator 2: Judgment Day"
('Sarah Connor', 'A woman who is targeted by a Terminator.', 'leading', (SELECT id FROM persons WHERE first_name = 'Linda' AND last_name = 'Hamilton')),
('T-800', 'A Terminator sent to protect Sarah and her son.', 'supporting', (SELECT id FROM persons WHERE first_name = 'Arnold' AND last_name = 'Schwarzenegger'));


-- Персонажи для фильма "Inception"
INSERT INTO movie_characters (movie_id, character_id) VALUES
((SELECT id FROM movies WHERE title = 'Inception'), (SELECT id FROM characters WHERE name = 'Eames' AND description LIKE '%Cobb%')),
((SELECT id FROM movies WHERE title = 'Inception'), (SELECT id FROM characters WHERE name = 'Mal Cobb')),

-- Персонажи для фильма "Jurassic Park"
((SELECT id FROM movies WHERE title = 'Jurassic Park'), (SELECT id FROM characters WHERE name = 'Dr. Ellie Sattler')),
((SELECT id FROM movies WHERE title = 'Jurassic Park'), (SELECT id FROM characters WHERE name = 'John Hammond')),

-- Персонажи для фильма "Pulp Fiction"
((SELECT id FROM movies WHERE title = 'Pulp Fiction'), (SELECT id FROM characters WHERE name = 'Jules Winnfield')),
((SELECT id FROM movies WHERE title = 'Pulp Fiction'), (SELECT id FROM characters WHERE name = 'Mia Wallace')),

-- Персонажи для фильма "The Irishman"
((SELECT id FROM movies WHERE title = 'The Irishman'), (SELECT id FROM characters WHERE name = 'Jimmy Hoffa')),
((SELECT id FROM movies WHERE title = 'The Irishman'), (SELECT id FROM characters WHERE name = 'Russell Bufalino')),

-- Персонажи для фильма "Avatar"
((SELECT id FROM movies WHERE title = 'Avatar'), (SELECT id FROM characters WHERE name = 'Dr. Grace Augustine')),
((SELECT id FROM movies WHERE title = 'Avatar'), (SELECT id FROM characters WHERE name = 'Colonel Miles Quaritch')),

-- Персонажи для фильма "The Dark Knight"
((SELECT id FROM movies WHERE title = 'The Dark Knight'), (SELECT id FROM characters WHERE name = 'Harvey Dent')),
((SELECT id FROM movies WHERE title = 'The Dark Knight'), (SELECT id FROM characters WHERE name = 'Rachel Dawes')),

-- Персонажи для фильма "E.T. the Extra-Terrestrial"
((SELECT id FROM movies WHERE title = 'E.T. the Extra-Terrestrial'), (SELECT id FROM characters WHERE name = 'Mary')),
((SELECT id FROM movies WHERE title = 'E.T. the Extra-Terrestrial'), (SELECT id FROM characters WHERE name = 'Michael')),

-- Персонажи для фильма "Kill Bill: Vol. 1"
((SELECT id FROM movies WHERE title = 'Kill Bill: Vol. 1'), (SELECT id FROM characters WHERE name = 'O-Ren Ishii')),
((SELECT id FROM movies WHERE title = 'Kill Bill: Vol. 1'), (SELECT id FROM characters WHERE name = 'Vernita Green')),

-- Персонажи для фильма "Goodfellas"
((SELECT id FROM movies WHERE title = 'Goodfellas'), (SELECT id FROM characters WHERE name = 'Tommy DeVito')),
((SELECT id FROM movies WHERE title = 'Goodfellas'), (SELECT id FROM characters WHERE name = 'Karen Hill')),

-- Персонажи для фильма "Titanic"
((SELECT id FROM movies WHERE title = 'Titanic'), (SELECT id FROM characters WHERE name = 'Rose DeWitt Bukater')),
((SELECT id FROM movies WHERE title = 'Titanic'), (SELECT id FROM characters WHERE name = 'Cal Hockley')),

-- Персонажи для фильма "Interstellar"
((SELECT id FROM movies WHERE title = 'Interstellar'), (SELECT id FROM characters WHERE name = 'Cooper')),
((SELECT id FROM movies WHERE title = 'Interstellar'), (SELECT id FROM characters WHERE name = 'Brand')),

-- Персонажи для фильма "Saving Private Ryan"
((SELECT id FROM movies WHERE title = 'Saving Private Ryan'), (SELECT id FROM characters WHERE name = 'Captain John H. Miller')),
((SELECT id FROM movies WHERE title = 'Saving Private Ryan'), (SELECT id FROM characters WHERE name = 'Private James Francis Ryan')),

-- Персонажи для фильма "Django Unchained"
((SELECT id FROM movies WHERE title = 'Django Unchained'), (SELECT id FROM characters WHERE name = 'Django')),
((SELECT id FROM movies WHERE title = 'Django Unchained'), (SELECT id FROM characters WHERE name = 'Dr. King Schultz')),

-- Персонажи для фильма "The Wolf of Wall Street"
((SELECT id FROM movies WHERE title = 'The Wolf of Wall Street'), (SELECT id FROM characters WHERE name = 'Jordan Belfort')),
((SELECT id FROM movies WHERE title = 'The Wolf of Wall Street'), (SELECT id FROM characters WHERE name = 'Donnie Azoff')),

-- Персонажи для фильма "Terminator 2: Judgment Day"
((SELECT id FROM movies WHERE title = 'Terminator 2: Judgment Day'), (SELECT id FROM characters WHERE name = 'Sarah Connor')),
((SELECT id FROM movies WHERE title = 'Terminator 2: Judgment Day'), (SELECT id FROM characters WHERE name = 'T-800'));




-- Персонажи для фильма "Inception"
INSERT INTO characters (name, description, role, person_id) VALUES
('Dream Architect', 'A skilled professional who designs and constructs dream worlds.', 'supporting', NULL),
('Projections', 'Imaginary figures created within the dreams of individuals.', 'supporting', NULL);

-- Персонажи для фильма "Jurassic Park"
INSERT INTO characters (name, description, role, person_id) VALUES
('T-Rex', 'A massive predatory dinosaur.', 'leading', NULL),
('Dilophosaurus', 'A dinosaur known for its frilled neck and venomous spit.', 'supporting', NULL);

-- Персонажи для фильма "Pulp Fiction"
INSERT INTO characters (name, description, role, person_id) VALUES
('The Gimp', 'A masked and bound character found in a pawn shop.', 'supporting', NULL),
('The Diner Waitress', 'A waitress who serves the characters during the film’s climax.', 'supporting', NULL);


INSERT INTO characters (name, description, role, person_id) VALUES
('Ikran', 'Flying creatures ridden by the Na’vi.', 'supporting', NULL),
('Thanator', 'A fierce predator native to Pandora.', 'supporting', NULL);

-- Персонажи для фильма "The Dark Knight"
INSERT INTO characters (name, description, role, person_id) VALUES
('Bat-Signal', 'A spotlight used to summon Batman.', 'supporting', NULL),
('Batmobile', 'Batman’s advanced vehicle used for crime-fighting.', 'supporting', NULL);

-- Персонажи для фильма "E.T. the Extra-Terrestrial"
INSERT INTO characters (name, description, role, person_id) VALUES
('E.T.', 'An extraterrestrial being stranded on Earth.', 'leading', NULL),
('The Spaceship', 'E.T.’s means of travel and escape.', 'supporting', NULL);

-- Персонажи для фильма "Kill Bill: Vol. 1"
INSERT INTO characters (name, description, role, person_id) VALUES
('The Bride’s Sword', 'The weapon used by The Bride in her quest for revenge.', 'supporting', NULL),
('The House of Blue Leaves', 'A setting that plays a crucial role in The Bride’s mission.', 'supporting', NULL);

INSERT INTO characters (name, description, role, person_id) VALUES
('Tesseract', 'A higher-dimensional space used for communication.', 'supporting', NULL),
('The Endurance', 'The spaceship used for traveling through space.', 'leading', NULL);


-- Связь вымышленных персонажей с фильмами

-- Вставка персонажей для фильма "Inception"
INSERT INTO movie_characters (movie_id, character_id) VALUES
((SELECT id FROM movies WHERE title = 'Inception'), (SELECT id FROM characters WHERE name = 'Dream Architect')),
((SELECT id FROM movies WHERE title = 'Inception'), (SELECT id FROM characters WHERE name = 'Projections'));

-- Вставка персонажей для фильма "Jurassic Park"
INSERT INTO movie_characters (movie_id, character_id) VALUES
((SELECT id FROM movies WHERE title = 'Jurassic Park'), (SELECT id FROM characters WHERE name = 'T-Rex')),
((SELECT id FROM movies WHERE title = 'Jurassic Park'), (SELECT id FROM characters WHERE name = 'Dilophosaurus'));

-- Вставка персонажей для фильма "Pulp Fiction"
INSERT INTO movie_characters (movie_id, character_id) VALUES
((SELECT id FROM movies WHERE title = 'Pulp Fiction'), (SELECT id FROM characters WHERE name = 'The Gimp')),
((SELECT id FROM movies WHERE title = 'Pulp Fiction'), (SELECT id FROM characters WHERE name = 'The Diner Waitress'));

-- Вставка персонажей для фильма "Avatar"
INSERT INTO movie_characters (movie_id, character_id) VALUES
((SELECT id FROM movies WHERE title = 'Avatar'), (SELECT id FROM characters WHERE name = 'Ikran')),
((SELECT id FROM movies WHERE title = 'Avatar'), (SELECT id FROM characters WHERE name = 'Thanator'));

-- Вставка персонажей для фильма "The Dark Knight"
INSERT INTO movie_characters (movie_id, character_id) VALUES
((SELECT id FROM movies WHERE title = 'The Dark Knight'), (SELECT id FROM characters WHERE name = 'Bat-Signal')),
((SELECT id FROM movies WHERE title = 'The Dark Knight'), (SELECT id FROM characters WHERE name = 'Batmobile'));

-- Вставка персонажей для фильма "E.T. the Extra-Terrestrial"
INSERT INTO movie_characters (movie_id, character_id) VALUES
((SELECT id FROM movies WHERE title = 'E.T. the Extra-Terrestrial'), (SELECT id FROM characters WHERE name = 'E.T.')),
((SELECT id FROM movies WHERE title = 'E.T. the Extra-Terrestrial'), (SELECT id FROM characters WHERE name = 'The Spaceship'));

-- Вставка персонажей для фильма "Kill Bill: Vol. 1"
INSERT INTO movie_characters (movie_id, character_id) VALUES
((SELECT id FROM movies WHERE title = 'Kill Bill: Vol. 1'), (SELECT id FROM characters WHERE name = 'The Bride’s Sword')),
((SELECT id FROM movies WHERE title = 'Kill Bill: Vol. 1'), (SELECT id FROM characters WHERE name = 'The House of Blue Leaves'));

-- Вставка персонажей для фильма "Interstellar"
INSERT INTO movie_characters (movie_id, character_id) VALUES
((SELECT id FROM movies WHERE title = 'Interstellar'), (SELECT id FROM characters WHERE name = 'Tesseract')),
((SELECT id FROM movies WHERE title = 'Interstellar'), (SELECT id FROM characters WHERE name = 'The Endurance'));


-- Вставка участия актёров в фильмах как массовка или камео
INSERT INTO movie_appearances (movie_id, person_id, is_non_character) VALUES
((SELECT id FROM movies WHERE title = 'Inception'), (SELECT id FROM persons WHERE first_name = 'Robert' AND last_name = 'Downey Jr.'), TRUE),
((SELECT id FROM movies WHERE title = 'Jurassic Park'), (SELECT id FROM persons WHERE first_name = 'Scarlett' AND last_name  = 'Johansson'), TRUE),
((SELECT id FROM movies WHERE title = 'Pulp Fiction'), (SELECT id FROM persons WHERE first_name = 'Tom' AND last_name  = 'Hiddleston'), TRUE),
((SELECT id FROM movies WHERE title = 'Avatar'), (SELECT id FROM persons WHERE first_name = 'Mark' AND last_name  = 'Ruffalo'), TRUE),
((SELECT id FROM movies WHERE title = 'Goodfellas'), (SELECT id FROM persons WHERE first_name = 'Chris' AND last_name  = 'Evans'), TRUE),
((SELECT id FROM movies WHERE title = 'Titanic'), (SELECT id FROM persons WHERE first_name = 'Jeremy' AND last_name  = 'Renner'), TRUE),
((SELECT id FROM movies WHERE title = 'Interstellar'), (SELECT id FROM persons WHERE first_name = 'Benedict' AND last_name  = 'Cumberbatch'), TRUE),
((SELECT id FROM movies WHERE title = 'Saving Private Ryan'), (SELECT id FROM persons WHERE first_name = 'Chadwick' AND last_name  = 'Boseman'), TRUE),
((SELECT id FROM movies WHERE title = 'Django Unchained'), (SELECT id FROM persons WHERE first_name = 'Brie' AND last_name  = 'Larson'), TRUE);
