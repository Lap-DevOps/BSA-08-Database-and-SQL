CREATE TABLE IF NOT EXISTS movies (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    budget NUMERIC,
    release_date DATE,
    duration INTERVAL,
    country_id INTEGER,
    poster_file_id INTEGER,
    FOREIGN KEY (country_id) REFERENCES countries(id) ON DELETE SET NULL,
    FOREIGN KEY (poster_file_id) REFERENCES files(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS favorite_movies (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    movie_id INTEGER NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (movie_id) REFERENCES movies(id) ON DELETE CASCADE,
    UNIQUE (user_id, movie_id)
);

