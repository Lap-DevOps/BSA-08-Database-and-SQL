#!/bin/bash

# Start Docker Compose
docker-compose up -d

# Wait for the PostgreSQL container to be ready
echo "Waiting for PostgreSQL container to start..."
until docker exec postgres-db pg_isready -U postgres; do
  sleep 15
done

# Directory containing SQL files
SQL_DIR="./queries"
LOG_FILE="output.log"

# Clear the log file
> $LOG_FILE

# Execute each SQL file in the directory and log the output
for sql_file in $SQL_DIR/*.sql; do
  echo "Executing $sql_file..."
  echo "Running $sql_file" >> $LOG_FILE
  docker exec -i postgres-db psql -U film_director -d films_db  -f /queries/$(basename $sql_file) >> $LOG_FILE
done

# Display the logs
echo "SQL query execution logs:"

