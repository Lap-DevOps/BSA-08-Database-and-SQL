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


INSERT INTO files (file_name, mime_type, file_key, url) VALUES
('tom_hardy_photo1.png', 'image/png', 'tom_hardy_photo1_key', 'https://example.com/tom_hardy_photo1.png'),
('marion_cotillard_photo1.png', 'image/png', 'marion_cotillard_photo1_key', 'https://example.com/marion_cotillard_photo1.png'),
('laura_dern_photo1.png', 'image/png', 'laura_dern_photo1_key', 'https://example.com/laura_dern_photo1.png'),
('richard_attenborough_photo1.png', 'image/png', 'richard_attenborough_photo1_key', 'https://example.com/richard_attenborough_photo1.png'),
('samuel_jackson_photo1.png', 'image/png', 'samuel_jackson_photo1_key', 'https://example.com/samuel_jackson_photo1.png'),
('uma_thurman_photo1.png', 'image/png', 'uma_thurman_photo1_key', 'https://example.com/uma_thurman_photo1.png'),
('al_pacino_photo1.png', 'image/png', 'al_pacino_photo1_key', 'https://example.com/al_pacino_photo1.png'),
('joe_pesci_photo1.png', 'image/png', 'joe_pesci_photo1_key', 'https://example.com/joe_pesci_photo1.png'),
('sigourney_weaver_photo1.png', 'image/png', 'sigourney_weaver_photo1_key', 'https://example.com/sigourney_weaver_photo1.png'),
('stephen_lang_photo1.png', 'image/png', 'stephen_lang_photo1_key', 'https://example.com/stephen_lang_photo1.png'),
('aaron_eckhart_photo1.png', 'image/png', 'aaron_eckhart_photo1_key', 'https://example.com/aaron_eckhart_photo1.png'),
('maggie_gyllenhaal_photo1.png', 'image/png', 'maggie_gyllenhaal_photo1_key', 'https://example.com/maggie_gyllenhaal_photo1.png'),
('dee_wallace_photo1.png', 'image/png', 'dee_wallace_photo1_key', 'https://example.com/dee_wallace_photo1.png'),
('robert_macnaughton_photo1.png', 'image/png', 'robert_macnaughton_photo1_key', 'https://example.com/robert_macnaughton_photo1.png'),
('lucy_liu_photo1.png', 'image/png', 'lucy_liu_photo1_key', 'https://example.com/lucy_liu_photo1.png'),
('vivica_fox_photo1.png', 'image/png', 'vivica_fox_photo1_key', 'https://example.com/vivica_fox_photo1.png'),
('lorraine_bracco_photo1.png', 'image/png', 'lorraine_bracco_photo1_key', 'https://example.com/lorraine_bracco_photo1.png'),
('kate_winslet_photo1.png', 'image/png', 'kate_winslet_photo1_key', 'https://example.com/kate_winslet_photo1.png'),
('billy_zane_photo1.png', 'image/png', 'billy_zane_photo1_key', 'https://example.com/billy_zane_photo1.png'),
('matthew_mcconaughey_photo1.png', 'image/png', 'matthew_mcconaughey_photo1_key', 'https://example.com/matthew_mcconaughey_photo1.png'),
('anne_hathaway_photo1.png', 'image/png', 'anne_hathaway_photo1_key', 'https://example.com/anne_hathaway_photo1.png'),
('tom_hanks_photo1.png', 'image/png', 'tom_hanks_photo1_key', 'https://example.com/tom_hanks_photo1.png'),
('matt_damon_photo1.png', 'image/png', 'matt_damon_photo1_key', 'https://example.com/matt_damon_photo1.png'),
('jamie_foxx_photo1.png', 'image/png', 'jamie_foxx_photo1_key', 'https://example.com/jamie_foxx_photo1.png'),
('christoph_waltz_photo1.png', 'image/png', 'christoph_waltz_photo1_key', 'https://example.com/christoph_waltz_photo1.png'),
('jonah_hill_photo1.png', 'image/png', 'jonah_hill_photo1_key', 'https://example.com/jonah_hill_photo1.png'),
('linda_hamilton_photo1.png', 'image/png', 'linda_hamilton_photo1_key', 'https://example.com/linda_hamilton_photo1.png'),
('leonardo_dicaprio_photo1.png', 'image/png', 'leonardo_dicaprio_photo1_key', 'https://example.com/leonardo_dicaprio_photo1.png'),
('arnold_schwarzenegger_photo1.png', 'image/png', 'arnold_schwarzenegger_photo1_key', 'https://example.com/arnold_schwarzenegger_photo1.png');



INSERT INTO persons (first_name, last_name, biography, date_of_birth, gender, country_of_origin_id, main_photo_id) VALUES
('Tom', 'Hardy', 'An English actor and producer.', '1977-09-15', 'Male', (SELECT id FROM countries WHERE name = 'United Kingdom'), (SELECT id FROM files WHERE file_key = 'tom_hardy_photo1_key')),
('Marion', 'Cotillard', 'A French actress, singer, and environmentalist.', '1975-09-30', 'Female', (SELECT id FROM countries WHERE name = 'France'), (SELECT id FROM files WHERE file_key = 'marion_cotillard_photo1_key')),
('Laura', 'Dern', 'An American actress and filmmaker.', '1967-02-10', 'Female', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'laura_dern_photo1_key')),
('Richard', 'Attenborough', 'An English actor, filmmaker, and entrepreneur.', '1923-08-29', 'Male', (SELECT id FROM countries WHERE name = 'United Kingdom'), (SELECT id FROM files WHERE file_key = 'richard_attenborough_photo1_key')),
('Samuel', 'Jackson', 'An American actor and film producer.', '1948-12-21', 'Male', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'samuel_jackson_photo1_key')),
('Uma', 'Thurman', 'An American actress, writer, producer, and model.', '1970-04-29', 'Female', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'uma_thurman_photo1_key')),
('Al', 'Pacino', 'An American actor and filmmaker.', '1940-04-25', 'Male', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'al_pacino_photo1_key')),
('Joe', 'Pesci', 'An American actor and musician.', '1943-02-09', 'Male', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'joe_pesci_photo1_key')),
('Sigourney', 'Weaver', 'An American actress.', '1949-10-08', 'Female', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'sigourney_weaver_photo1_key')),
('Stephen', 'Lang', 'An American actor and playwright.', '1952-07-11', 'Male', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'stephen_lang_photo1_key')),
('Aaron', 'Eckhart', 'An American actor.', '1968-03-12', 'Male', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'aaron_eckhart_photo1_key')),
('Maggie', 'Gyllenhaal', 'An American actress and producer.', '1977-11-16', 'Female', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'maggie_gyllenhaal_photo1_key')),
('Dee', 'Wallace', 'An American actress.', '1948-12-14', 'Female', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'dee_wallace_photo1_key')),
('Robert', 'MacNaughton', 'An American actor.', '1966-12-19', 'Male', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'robert_macnaughton_photo1_key')),
('Lucy', 'Liu', 'An American actress, producer, and artist.', '1968-12-02', 'Female', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'lucy_liu_photo1_key')),
('Vivica', 'Fox', 'An American actress, producer, and television host.', '1964-07-30', 'Female', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'vivica_fox_photo1_key')),
('Lorraine', 'Bracco', 'An American actress.', '1954-10-02', 'Female', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'lorraine_bracco_photo1_key')),
('Kate', 'Winslet', 'An English actress.', '1975-10-05', 'Female', (SELECT id FROM countries WHERE name = 'United Kingdom'), (SELECT id FROM files WHERE file_key = 'kate_winslet_photo1_key')),
('Billy', 'Zane', 'An American actor and producer.', '1966-02-24', 'Male', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'billy_zane_photo1_key')),
('Matthew', 'McConaughey', 'An American actor.', '1969-11-04', 'Male', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'matthew_mcconaughey_photo1_key')),
('Anne', 'Hathaway', 'An American actress.', '1982-11-12', 'Female', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'anne_hathaway_photo1_key')),
('Tom', 'Hanks', 'An American actor and filmmaker.', '1956-07-09', 'Male', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'tom_hanks_photo1_key')),
('Matt', 'Damon', 'An American actor, film producer, and screenwriter.', '1970-10-08', 'Male', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'matt_damon_photo1_key')),
('Jamie', 'Foxx', 'An American actor, singer, and comedian.', '1967-12-13', 'Male', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'jamie_foxx_photo1_key')),
('Christoph', 'Waltz', 'An Austrian-German actor and director.', '1956-10-04', 'Male', (SELECT id FROM countries WHERE name = 'Germany'), (SELECT id FROM files WHERE file_key = 'christoph_waltz_photo1_key')),
('Jonah', 'Hill', 'An American actor, producer, writer, and comedian.', '1983-12-20', 'Male', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'jonah_hill_photo1_key')),
('Linda', 'Hamilton', 'An American actress.', '1956-09-26', 'Female', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'linda_hamilton_photo1_key')),
('Leonardo', 'DiCaprio', 'An American actor, film producer, and environmental activist, known for films such as "Titanic" and "Inception."', '1974-11-11', 'Male', (SELECT id FROM countries WHERE name = 'United States'), (SELECT id FROM files WHERE file_key = 'leonardo_dicaprio_photo1_key')),
('Arnold', 'Schwarzenegger', 'An Austrian-American actor, producer, businessman, retired bodybuilder, and former politician.', '1947-07-30', 'Male', (SELECT id FROM countries WHERE name = 'Austria'), (SELECT id FROM files WHERE file_key = 'arnold_schwarzenegger_photo1_key'));


