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
        varchar id PK
        varchar file_name
        varchar mime_type
        varchar file_key 
        datetime created_at
        datetime updated_at
    }

    users {
            int id PK
            varchar username UNIQUE
            varchar first_name
            varchar last_name
            varchar email UNIQUE
            varchar password
            datetime created_at
            datetime updated_at
    }

    users_avatars {
            int id PK
            int user_id FK
            int file_id FK 
            datetime created_at
            datetime updated_at
        }
        
users ||--o{ users_avatars : "user_id"
files ||--|| users_avatars : "file_id"

countries {
int id PK
varchar name UNIQUE
varchar code UNIQUE
datetime created_at
datetime updated_at
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
datetime created_at
datetime updated_at
}
countries ||--o{ persons : "country_of_origin_id"
files ||--|{ persons : "main_photo_id"

movies {
int id PK
varchar title
text description
numeric budget
date release_date
interval duration
int country_id FK
int poster_file_id FK
datetime created_at
datetime updated_at
}
files ||--|{ movies : "poster_file_id"
countries ||--o{ movies : "country_id"

user_favorite_movies {
int id PK
int user_id FK
int movie_id FK
datetime created_at
datetime updated_at
}
movies ||--o{ user_favorite_movies : "movie_id"
users ||--o{ user_favorite_movies : "user_id"

genres {
int id PK
varchar name 
datetime created_at
datetime updated_at
}

movie_genres {
int movie_id FK
int genre_id FK
datetime created_at
datetime updated_at
    }
movies ||--o{ movie_genres : "movie_id"
genres ||--o{ movie_genres : "genre_id"

movie_directors {
int id PK
int movie_id FK
int person_id FK
datetime created_at
datetime updated_at
}
movies ||--o{ movie_directors : "movie_id"
persons ||--o{ movie_directors : "person_id"

characters {
int id PK
varchar name
text description
enum role NOT NULL
int person_id FK
datetime created_at
datetime updated_at
}

characters ||--o{ persons : "person_id"

movie_characters {
int movie_id FK
int character_id FK
datetime created_at
datetime updated_at
    }
characters ||--o{ movie_characters : "character_id"
movies ||--o{ movie_characters : "movie_id"

movie_appearances {
int id PK
int movie_id FK
int person_id FK
boolean is_non_character NOT NULL DEFAULT TRUE
datetime created_at
datetime updated_at
}
persons ||--o{ movie_appearances : "person_id"
movies ||--o{ movie_appearances : "movie_id"

person_photos {
int id PK
int file_id FK
int person_id FK
datetime created_at
datetime updated_at
}
persons ||--o{ person_photos : "person_id"
files ||--|{ person_photos : "file_id"

```