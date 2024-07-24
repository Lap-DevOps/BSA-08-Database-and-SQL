INSERT INTO files (file_name, mime_type, file_key, url) VALUES
('christopher_nolan_photo1.png', 'image/png', 'christopher_nolan_photo1_key', 'https://example.com/christopher_nolan_photo1.png'),
('steven_spielberg_photo1.png', 'image/png', 'steven_spielberg_photo1_key', 'https://example.com/steven_spielberg_photo1.png'),
('quentin_tarantino_photo1.png', 'image/png', 'quentin_tarantino_photo1_key', 'https://example.com/quentin_tarantino_photo1.png'),
('martin_scorsese_photo1.png', 'image/png', 'martin_scorsese_photo1_key', 'https://example.com/martin_scorsese_photo1.png'),
('james_cameron_photo1.png', 'image/png', 'james_cameron_photo1_key', 'https://example.com/james_cameron_photo1.png');


INSERT INTO persons (first_name, last_name, biography, date_of_birth, gender, country_of_origin_id, main_photo_id) VALUES
('Christopher', 'Nolan', 'British-American film director known for his cerebral, often nonlinear storytelling.', '1970-07-30', 'Male', 1, (SELECT id FROM files WHERE file_key = 'christopher_nolan_photo1_key')),
('Steven', 'Spielberg', 'American film director and producer, widely regarded as one of the most popular directors in film history.', '1946-12-18', 'Male', 2, (SELECT id FROM files WHERE file_key = 'steven_spielberg_photo1_key')),
('Quentin', 'Tarantino', 'American film director, screenwriter, producer, and actor, known for his highly stylized films.', '1963-03-27', 'Male', 3, (SELECT id FROM files WHERE file_key = 'quentin_tarantino_photo1_key')),
('Martin', 'Scorsese', 'American film director, producer, screenwriter, and actor, known for his extensive body of work in film.', '1942-11-17', 'Male', 1, (SELECT id FROM files WHERE file_key = 'martin_scorsese_photo1_key')),
('James', 'Cameron', 'Canadian filmmaker known for making science fiction and epic films.', '1954-08-16', 'Male', 2, (SELECT id FROM files WHERE file_key = 'james_cameron_photo1_key'));



INSERT INTO files (file_name, mime_type, file_key, url) VALUES
('christopher_nolan_photo2.png', 'image/png', 'christopher_nolan_photo2_key', 'https://example.com/christopher_nolan_photo2.png'),
('christopher_nolan_photo3.png', 'image/png', 'christopher_nolan_photo3_key', 'https://example.com/christopher_nolan_photo3.png'),
('steven_spielberg_photo2.png', 'image/png', 'steven_spielberg_photo2_key', 'https://example.com/steven_spielberg_photo2.png'),
('steven_spielberg_photo3.png', 'image/png', 'steven_spielberg_photo3_key', 'https://example.com/steven_spielberg_photo3.png'),
('quentin_tarantino_photo2.png', 'image/png', 'quentin_tarantino_photo2_key', 'https://example.com/quentin_tarantino_photo2.png'),
('quentin_tarantino_photo3.png', 'image/png', 'quentin_tarantino_photo3_key', 'https://example.com/quentin_tarantino_photo3.png'),
('martin_scorsese_photo2.png', 'image/png', 'martin_scorsese_photo2_key', 'https://example.com/martin_scorsese_photo2.png'),
('martin_scorsese_photo3.png', 'image/png', 'martin_scorsese_photo3_key', 'https://example.com/martin_scorsese_photo3.png'),
('james_cameron_photo2.png', 'image/png', 'james_cameron_photo2_key', 'https://example.com/james_cameron_photo2.png'),
('james_cameron_photo3.png', 'image/png', 'james_cameron_photo3_key', 'https://example.com/james_cameron_photo3.png');

INSERT INTO person_photos (file_id, person_id) VALUES

((SELECT id FROM files WHERE file_key = 'christopher_nolan_photo2_key'), 10),
((SELECT id FROM files WHERE file_key = 'christopher_nolan_photo3_key'), 10),

((SELECT id FROM files WHERE file_key = 'steven_spielberg_photo2_key'), 11),
((SELECT id FROM files WHERE file_key = 'steven_spielberg_photo3_key'), 11),

((SELECT id FROM files WHERE file_key = 'quentin_tarantino_photo2_key'), 12),
((SELECT id FROM files WHERE file_key = 'quentin_tarantino_photo3_key'), 12),

((SELECT id FROM files WHERE file_key = 'martin_scorsese_photo2_key'), 13),
((SELECT id FROM files WHERE file_key = 'martin_scorsese_photo3_key'), 13),

((SELECT id FROM files WHERE file_key = 'james_cameron_photo2_key'), 14),
((SELECT id FROM files WHERE file_key = 'james_cameron_photo3_key'), 14);