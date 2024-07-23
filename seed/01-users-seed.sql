INSERT INTO users (username, first_name, last_name, email, password) VALUES
('john_doe', 'John', 'Doe', 'john.doe@example.com', 'password123'),
('jane_smith', 'Jane', 'Smith', 'jane.smith@example.com', 'password456'),
('alice_johnson', 'Alice', 'Johnson', 'alice.johnson@example.com', 'password789'),
('bob_brown', 'Bob', 'Brown', 'bob.brown@example.com', 'password101'),
('carol_davis', 'Carol', 'Davis', 'carol.davis@example.com', 'password202'),
('daniel_miller', 'Daniel', 'Miller', 'daniel.miller@example.com', 'password303'),
('emma_wilson', 'Emma', 'Wilson', 'emma.wilson@example.com', 'password404'),
('frank_thompson', 'Frank', 'Thompson', 'frank.thompson@example.com', 'password505'),
('grace_martin', 'Grace', 'Martin', 'grace.martin@example.com', 'password606'),
('henry_taylor', 'Henry', 'Taylor', 'henry.taylor@example.com', 'password707');

INSERT INTO files (file_name, mime_type, file_key, url) VALUES
('john_doe_avatar1.png', 'image/png', 'john_doe_avatar1_key', 'http://example.com/john_doe_avatar1.png'),
('john_doe_avatar2.png', 'image/png', 'john_doe_avatar2_key', 'http://example.com/john_doe_avatar2.png'),
('jane_smith_avatar1.png', 'image/png', 'jane_smith_avatar1_key', 'http://example.com/jane_smith_avatar1.png'),
('jane_smith_avatar2.png', 'image/png', 'jane_smith_avatar2_key', 'http://example.com/jane_smith_avatar2.png'),
('alice_johnson_avatar1.png', 'image/png', 'alice_johnson_avatar1_key', 'http://example.com/alice_johnson_avatar1.png'),
('bob_brown_avatar1.png', 'image/png', 'bob_brown_avatar1_key', 'http://example.com/bob_brown_avatar1.png'),
('carol_davis_avatar1.png', 'image/png', 'carol_davis_avatar1_key', 'http://example.com/carol_davis_avatar1.png'),
('daniel_miller_avatar1.png', 'image/png', 'daniel_miller_avatar1_key', 'http://example.com/daniel_miller_avatar1.png'),
('emma_wilson_avatar1.png', 'image/png', 'emma_wilson_avatar1_key', 'http://example.com/emma_wilson_avatar1.png'),
('frank_thompson_avatar1.png', 'image/png', 'frank_thompson_avatar1_key', 'http://example.com/frank_thompson_avatar1.png'),
('grace_martin_avatar1.png', 'image/png', 'grace_martin_avatar1_key', 'http://example.com/grace_martin_avatar1.png'),
('henry_taylor_avatar1.png', 'image/png', 'henry_taylor_avatar1_key', 'http://example.com/henry_taylor_avatar1.png');

INSERT INTO user_avatars (user_id, file_id) VALUES
(1, 1), (1, 2),
(2, 3), (2, 4),
(3, 5),
(4, 6),
(5, 7),
(6, 8),
(7, 9),
(8, 10),
(9, 11),
(10, 12);
