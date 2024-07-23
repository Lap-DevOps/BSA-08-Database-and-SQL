INSERT INTO files (file_name, mime_type, file_key, url) VALUES
('robert_downey_jr_photo1.png', 'image/png', 'robert_downey_jr_photo1_key', 'https://example.com/robert_downey_jr_photo1.png'),
('scarlett_johansson_photo1.png', 'image/png', 'scarlett_johansson_photo1_key', 'https://example.com/scarlett_johansson_photo1.png'),
('tom_hiddleston_photo1.png', 'image/png', 'tom_hiddleston_photo1_key', 'https://example.com/tom_hiddleston_photo1.png'),
('mark_ruffalo_photo1.png', 'image/png', 'mark_ruffalo_photo1_key', 'https://example.com/mark_ruffalo_photo1.png'),
('chris_evans_photo1.png', 'image/png', 'chris_evans_photo1_key', 'https://example.com/chris_evans_photo1.png'),
('jeremy_renner_photo1.png', 'image/png', 'jeremy_renner_photo1_key', 'https://example.com/jeremy_renner_photo1.png'),
('benedict_cumberbatch_photo1.png', 'image/png', 'benedict_cumberbatch_photo1_key', 'https://example.com/benedict_cumberbatch_photo1.png'),
('chadwick_boseman_photo1.png', 'image/png', 'chadwick_boseman_photo1_key', 'https://example.com/chadwick_boseman_photo1.png'),
('brie_larson_photo1.png', 'image/png', 'brie_larson_photo1_key', 'https://example.com/brie_larson_photo1.png');


INSERT INTO persons (first_name, last_name, biography, date_of_birth, gender, country_of_origin_id, main_photo_id) VALUES
('Robert', 'Downey Jr.', 'An acclaimed actor known for his role as Tony Stark in the Marvel Cinematic Universe.', '1965-04-04', 'Male', 1, (SELECT id FROM files WHERE file_key = 'robert_downey_jr_photo1_key')),
('Scarlett', 'Johansson', 'A versatile actress known for her roles in both independent films and blockbusters.', '1984-11-22', 'Female', 2, (SELECT id FROM files WHERE file_key = 'scarlett_johansson_photo1_key')),
('Tom', 'Hiddleston', 'Famous for his role as Loki in the Marvel Cinematic Universe.', '1981-02-09', 'Male', 3, (SELECT id FROM files WHERE file_key = 'tom_hiddleston_photo1_key')),
('Mark', 'Ruffalo', 'Well-known for his role as Bruce Banner/The Hulk in the Marvel Cinematic Universe.', '1967-11-22', 'Male', 1, (SELECT id FROM files WHERE file_key = 'mark_ruffalo_photo1_key')),
('Chris', 'Evans', 'Popular for his role as Captain America in the Marvel Cinematic Universe.', '1981-06-13', 'Male', 2, (SELECT id FROM files WHERE file_key = 'chris_evans_photo1_key')),
('Jeremy', 'Renner', 'Known for his roles as Hawkeye in the Marvel Cinematic Universe and for his work in action films.', '1971-01-07', 'Male', 3, (SELECT id FROM files WHERE file_key = 'jeremy_renner_photo1_key')),
('Benedict', 'Cumberbatch', 'Famous for his role as Doctor Strange and his work in various acclaimed films and series.', '1976-07-19', 'Male', 1, (SELECT id FROM files WHERE file_key = 'benedict_cumberbatch_photo1_key')),
('Chadwick', 'Boseman', 'Acclaimed actor known for his portrayal of Black Panther in the Marvel Cinematic Universe.', '1976-11-29', 'Male', 2, (SELECT id FROM files WHERE file_key = 'chadwick_boseman_photo1_key')),
('Brie', 'Larson', 'Known for her role as Captain Marvel and her work in independent films.', '1989-02-01', 'Female', 3, (SELECT id FROM files WHERE file_key = 'brie_larson_photo1_key'));
