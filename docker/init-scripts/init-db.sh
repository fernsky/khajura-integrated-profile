#!/bin/bash
set -e

# First run the seed.sql which creates all the necessary types
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" -f /docker-entrypoint-initdb.d/seed.sql

# Execute demographics SQL files in order
echo "Executing demographics SQL files..."
for file in /docker-entrypoint-initdb.d/sql/profile/demographics/*.sql; do
  if [ -f "$file" ]; then
    echo "Executing $file..."
    psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" -f "$file"
  fi
done

# Execute economics SQL files in order
echo "Executing economics SQL files..."
for file in /docker-entrypoint-initdb.d/sql/profile/economics/*.sql; do
  if [ -f "$file" ]; then
    echo "Executing $file..."
    psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" -f "$file"
  fi
done

echo "All SQL files executed successfully!"
