#!/bin/bash

DB_FILE="db/db.sqlite"
SCHEMA_FILE="db/schema.sql"
SEED_FOLDER="db/seed"

sqlite3 $DB_FILE < $SCHEMA_FILE

if [ -d "$SEED_FOLDER" ]; then
  # Loop through all SQL files in the seed folder
  for sql_file in $SEED_FOLDER/*.sql; do
    # Check if there are any SQL files
    if [ -f "$sql_file" ]; then
      echo "Running $sql_file..."
      sqlite3 $DB_FILE < $sql_file
    fi
  done
else
  echo "Seed folder not found: $SEED_FOLDER"
fi

echo "Database setup complete."
