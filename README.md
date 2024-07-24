# BSA-08-Database-and-SQL

## Overview

This project sets up a PostgreSQL container and executes SQL scripts to demonstrate querying and data manipulation. The database is populated with a small dataset for testing purposes (no humans were harmed in the making of this dataset).

### Script to prepare database structure

[00-create-all-tables.sql](queries-create_tables%2F00-create-all-tables.sql)

### Scripts according to tasks

[queries](queries)

### To check:

```bash
 ./run_queries.sh
 
 ```

Wait for the container to start.

Check the output.log file for results:
```
cat output.log
```
## DB Structure 
# Database Schema Diagram

```mermaid

erDiagram
    files {
        INT id PK
        VARCHAR file_name
        VARCHAR mime_type
        VARCHAR file_key UNIQUE
        VARCHAR url
    }

    users {
        INT id PK
        VARCHAR username UNIQUE
        VARCHAR first_name
        VARCHAR last_name
        VARCHAR email UNIQUE
        VARCHAR password
    }

    user_avatars {
        INT id PK
        INT user_id FK
        INT file_id FK UNIQUE
    }

    countries {
        INT id PK
        VARCHAR name UNIQUE
        VARCHAR code UNIQUE
    }

    movies {
        INT id PK
        VARCHAR title
        TEXT description
        NUMERIC budget
        DATE release_date
        INTERVAL duration
        INT country_id FK
        INT poster_file_id FK
    }

    user_favorite_movies {
        INT id PK
        INT user_id FK
        INT movie_id FK
    }

    genres {
        INT id PK
        VARCHAR name UNIQUE
    }

    movie_genres {
        INT movie_id FK
        INT genre_id FK
        PRIMARY KEY (movie_id, genre_id)
    }

    persons {
        INT id PK
        VARCHAR first_name
        VARCHAR last_name
        TEXT biography
        DATE date_of_birth
        ENUM gender
        INT country_of_origin_id FK
        INT main_photo_id FK
    }

    person_photos {
        INT id PK
        INT file_id FK
        INT person_id FK
        UNIQUE (file_id, person_id)
    }

    movie_directors {
        INT id PK
        INT movie_id FK
        INT person_id FK
        UNIQUE (movie_id, person_id)
    }

    characters {
        INT id PK
        VARCHAR name
        TEXT description
        ENUM role NOT NULL
        INT person_id FK
    }

    movie_characters {
        INT movie_id FK
        INT character_id FK
        PRIMARY KEY (movie_id, character_id)
    }

    movie_appearances {
        INT id PK
        INT movie_id FK
        INT person_id FK
        BOOLEAN is_non_character NOT NULL DEFAULT TRUE
    }

    users ||--o{ user_avatars : "has"
    files ||--o| user_avatars : "is"
    users ||--o{ user_favorite_movies : "favorites"
    movies ||--o| user_favorite_movies : "is"
    countries ||--o{ persons : "originates"
    files ||--o| persons : "has photo"
    files ||--o| movies : "is poster"
    movies ||--o{ movie_genres : "has"
    genres ||--o| movie_genres : "is"
    movies ||--o{ movie_directors : "directed by"
    persons ||--o| movie_directors : "directs"
    persons ||--o{ characters : "portrays"
    movies ||--o{ movie_characters : "features"
    characters ||--o| movie_characters : "is"
    persons ||--o{ movie_appearances : "appears in"
    movies ||--o| movie_appearances : "features"
    files ||--o| person_photos : "is"
    persons ||--o| person_photos : "has photo"

```