create TABLE files (
    id SERIAL PRIMARY KEY,
    file_name VARCHAR(255) NOT NULL,
    mime_type VARCHAR(100) NOT NULL,
    file_key VARCHAR(255) NOT NULL UNIQUE,
    url VARCHAR(255) NOT NULL
);