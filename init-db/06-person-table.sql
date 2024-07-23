CREATE TYPE gender AS ENUM ('Male', 'Female', 'Other', 'Unknown');

CREATE TABLE IF NOT EXISTS persons (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    biography TEXT,
    date_of_birth DATE,
    gender gender,
    country_of_origin_id INTEGER,
    FOREIGN KEY (country_of_origin_id) REFERENCES countries(id) ON DELETE SET NULL,
    main_photo_id INTEGER,
    FOREIGN KEY (main_photo_id) REFERENCES files(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS person_photos (
    id SERIAL PRIMARY KEY,
    file_id INTEGER NOT NULL,
    person_id INTEGER NOT NULL,
    FOREIGN KEY (file_id) REFERENCES files(id) ON DELETE CASCADE,
    FOREIGN KEY (person_id) REFERENCES persons(id) ON DELETE CASCADE,
    UNIQUE (file_id, person_id)
);

CREATE TABLE IF NOT EXISTS movie_directors (
    id SERIAL PRIMARY KEY,
    movie_id INTEGER NOT NULL,
    person_id INTEGER NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE,
    FOREIGN KEY (person_id) REFERENCES persons(id) ON DELETE CASCADE,
    UNIQUE (movie_id, person_id)
);