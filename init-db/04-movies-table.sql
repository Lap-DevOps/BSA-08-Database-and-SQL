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

