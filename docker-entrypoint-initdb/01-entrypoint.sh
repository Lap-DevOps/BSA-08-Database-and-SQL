#!/bin/bash
set -e

export PGPASSWORD=$POSTGRES_PASSWORD_DEV

until psql -U "$POSTGRES_USER_DEV" -d "$POSTGRES_DB_DEV" -c '\q'; do
  >&2 echo "Postgres is still unavailable - sleeping"
  sleep 1
done


for f in /init-db/*; do
  case "$f" in
    *.sh)  echo "$0: running $f"; . "$f" ;;
    *.sql) echo "$0: running $f"; psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER_DEV" --dbname "$POSTGRES_DB_DEV" -f "$f"; ;;
    *)     echo "$0: ignoring $f" ;;
  esac
  echo
done

for f in /seed/*; do
  case "$f" in
    *.sh)  echo "$0: running $f"; . "$f" ;;
    *.sql) echo "$0: running $f"; psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER_DEV" --dbname "$POSTGRES_DB_DEV" -f "$f"; ;;
    *)     echo "$0: ignoring $f" ;;
  esac
  echo
done

exec "$@"

