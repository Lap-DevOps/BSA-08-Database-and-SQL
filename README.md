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
        int id PK
        varchar file_name
        varchar mime_type
        varchar file_key UNIQUE
        varchar url
    }
    users {
        int id PK
        varchar username UNIQUE
        varchar first_name
        varchar last_name
        varchar email UNIQUE
        varchar password
    }
    user_avatars {
        int id PK
        int user_id FK
        int file_id FK UNIQUE
    }
    users ||--o{ user_avatars : has
    files ||--o| user_avatars : is

    countries {
        int id PK
        varchar name UNIQUE
        varchar code UNIQUE
    }
    persons {
        int id PK
        varchar first_name
        varchar last_name
        text biography
        date date_of_birth
        enum gender
        int country_of_origin_id FK
        int main_photo_id FK
    }
    countries ||--o{ persons : originates
    files ||--o| persons : has_photo

    movies {
        int id PK
        varchar title
        text description
        numeric budget
        date release_date
        interval duration
        int country_id FK
        int poster_file_id FK
    }
    files ||--o| movies : is_poster

    user_favorite_movies {
        int id PK
        int user_id FK
        int movie_id FK
    }
    users ||--o{ user_favorite_movies : favorites
    movies ||--o| user_favorite_movies : is

    genres {
        int id PK
        varchar name UNIQUE
    }
    movie_genres {
        int movie_id FK
        int genre_id FK
        PK (movie_id, genre_id)
    }
    movies ||--o{ movie_genres : has
    genres ||--o| movie_genres : is

    movie_directors {
        int id PK
        int movie_id FK
        int person_id FK
        UNIQUE (movie_id, person_id)
    }
    movies ||--o{ movie_directors : directed_by
    persons ||--o| movie_directors : directs

    characters {
        int id PK
        varchar name
        text description
        enum role NOT NULL
        int person_id FK
    }
    movie_characters {
        int movie_id FK
        int character_id FK
        PK (movie_id, character_id)
    }
    movies ||--o{ movie_characters : features
    characters ||--o| movie_characters : is

    movie_appearances {
        int id PK
        int movie_id FK
        int person_id FK
        boolean is_non_character NOT NULL DEFAULT TRUE
    }
    persons ||--o{ movie_appearances : appears_in
    movies ||--o| movie_appearances : features

    person_photos {
        int id PK
        int file_id FK
        int person_id FK
        UNIQUE (file_id, person_id)
    }
    files ||--o| person_photos : is
    persons ||--o| person_photos : has_photo


```