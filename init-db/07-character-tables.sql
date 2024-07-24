CREATE TYPE role_type AS ENUM ('leading', 'supporting', 'background');


CREATE TABLE IF NOT EXISTS characters (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    role role_type NOT NULL,
    person_id INTEGER DEFAULT NULL,
    FOREIGN KEY (person_id) REFERENCES persons(id) ON DELETE SET NULL
);


CREATE TABLE IF NOT EXISTS movie_characters (
    movie_id INTEGER NOT NULL,
    character_id INTEGER NOT NULL,
    PRIMARY KEY (movie_id, character_id),
    FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE,
    FOREIGN KEY (character_id) REFERENCES characters(id) ON DELETE CASCADE
);



CREATE TABLE IF NOT EXISTS movie_appearances (
    id SERIAL PRIMARY KEY,
    movie_id INTEGER NOT NULL,
    person_id INTEGER NOT NULL,
    is_non_character BOOLEAN NOT NULL DEFAULT TRUE,
    FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE,
    FOREIGN KEY (person_id) REFERENCES persons(id) ON DELETE CASCADE
);
