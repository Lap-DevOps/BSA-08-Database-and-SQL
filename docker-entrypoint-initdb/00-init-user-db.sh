#!/usr/bin/env bash
set -e
echo "** Creating  user and config"

if [[ -z "$POSTGRES_USER_DEV" || -z "$POSTGRES_PASSWORD_DEV" || -z "$POSTGRES_DB_DEV" ]]; then
  echo "Error: POSTGRES_USER, POSTGRES_PASSWORD, and POSTGRES_DB must be set"
  exit 1
fi


psql -v ON_ERROR_STOP=1 -U postgres  -d postgres <<-EOSQL

  CREATE USER ${POSTGRES_USER_DEV} SUPERUSER;
  ALTER USER ${POSTGRES_USER_DEV} WITH PASSWORD '${POSTGRES_PASSWORD_DEV}';
  ALTER ROLE ${POSTGRES_USER_DEV} SET client_encoding TO 'utf8';
  ALTER ROLE ${POSTGRES_USER_DEV} SET default_transaction_isolation TO 'read committed';
  ALTER ROLE ${POSTGRES_USER_DEV} SET timezone TO 'UTC';

  CREATE DATABASE ${POSTGRES_DB_DEV} WITH
    ENCODING 'UTF8'
    OWNER = ${POSTGRES_USER_DEV}
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8';

  GRANT ALL PRIVILEGES ON DATABASE ${POSTGRES_DB_DEV} TO ${POSTGRES_USER_DEV};

EOSQL

echo "** Done"