INSERT INTO files (file_name, mime_type, file_key, url) VALUES
('robert_downey_jr_photo2.png', 'image/png', 'robert_downey_jr_photo2_key', 'https://example.com/robert_downey_jr_photo2.png'),
('robert_downey_jr_photo3.png', 'image/png', 'robert_downey_jr_photo3_key', 'https://example.com/robert_downey_jr_photo3.png'),
('scarlett_johansson_photo2.png', 'image/png', 'scarlett_johansson_photo2_key', 'https://example.com/scarlett_johansson_photo2.png'),
('scarlett_johansson_photo3.png', 'image/png', 'scarlett_johansson_photo3_key', 'https://example.com/scarlett_johansson_photo3.png'),
('tom_hiddleston_photo2.png', 'image/png', 'tom_hiddleston_photo2_key', 'https://example.com/tom_hiddleston_photo2.png'),
('tom_hiddleston_photo3.png', 'image/png', 'tom_hiddleston_photo3_key', 'https://example.com/tom_hiddleston_photo3.png'),
('mark_ruffalo_photo2.png', 'image/png', 'mark_ruffalo_photo2_key', 'https://example.com/mark_ruffalo_photo2.png'),
('mark_ruffalo_photo3.png', 'image/png', 'mark_ruffalo_photo3_key', 'https://example.com/mark_ruffalo_photo3.png'),
('chris_evans_photo2.png', 'image/png', 'chris_evans_photo2_key', 'https://example.com/chris_evans_photo2.png'),
('chris_evans_photo3.png', 'image/png', 'chris_evans_photo3_key', 'https://example.com/chris_evans_photo3.png'),
('jeremy_renner_photo2.png', 'image/png', 'jeremy_renner_photo2_key', 'https://example.com/jeremy_renner_photo2.png'),
('jeremy_renner_photo3.png', 'image/png', 'jeremy_renner_photo3_key', 'https://example.com/jeremy_renner_photo3.png'),
('benedict_cumberbatch_photo2.png', 'image/png', 'benedict_cumberbatch_photo2_key', 'https://example.com/benedict_cumberbatch_photo2.png'),
('benedict_cumberbatch_photo3.png', 'image/png', 'benedict_cumberbatch_photo3_key', 'https://example.com/benedict_cumberbatch_photo3.png'),
('chadwick_boseman_photo2.png', 'image/png', 'chadwick_boseman_photo2_key', 'https://example.com/chadwick_boseman_photo2.png'),
('chadwick_boseman_photo3.png', 'image/png', 'chadwick_boseman_photo3_key', 'https://example.com/chadwick_boseman_photo3.png'),
('brie_larson_photo2.png', 'image/png', 'brie_larson_photo2_key', 'https://example.com/brie_larson_photo2.png'),
('brie_larson_photo3.png', 'image/png', 'brie_larson_photo3_key', 'https://example.com/brie_larson_photo3.png');



INSERT INTO person_photos (file_id, person_id) VALUES

((SELECT id FROM files WHERE file_key = 'robert_downey_jr_photo2_key'), 1),
((SELECT id FROM files WHERE file_key = 'robert_downey_jr_photo3_key'), 1),

((SELECT id FROM files WHERE file_key = 'scarlett_johansson_photo2_key'), 2),
((SELECT id FROM files WHERE file_key = 'scarlett_johansson_photo3_key'), 2),

((SELECT id FROM files WHERE file_key = 'tom_hiddleston_photo2_key'), 3),
((SELECT id FROM files WHERE file_key = 'tom_hiddleston_photo3_key'), 3),

((SELECT id FROM files WHERE file_key = 'mark_ruffalo_photo2_key'), 4),
((SELECT id FROM files WHERE file_key = 'mark_ruffalo_photo3_key'), 4),

((SELECT id FROM files WHERE file_key = 'chris_evans_photo2_key'), 5),
((SELECT id FROM files WHERE file_key = 'chris_evans_photo3_key'), 5),

((SELECT id FROM files WHERE file_key = 'jeremy_renner_photo2_key'), 6),
((SELECT id FROM files WHERE file_key = 'jeremy_renner_photo3_key'), 6),

((SELECT id FROM files WHERE file_key = 'benedict_cumberbatch_photo2_key'), 7),
((SELECT id FROM files WHERE file_key = 'benedict_cumberbatch_photo3_key'), 7),

((SELECT id FROM files WHERE file_key = 'chadwick_boseman_photo2_key'), 8),
((SELECT id FROM files WHERE file_key = 'chadwick_boseman_photo3_key'), 8),

((SELECT id FROM files WHERE file_key = 'brie_larson_photo2_key'), 9),
((SELECT id FROM files WHERE file_key = 'brie_larson_photo3_key'), 9);

