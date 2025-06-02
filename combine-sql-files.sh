#!/bin/bash

# Directory for combined SQL files
mkdir -p ./combined

# Create the combined SQL file
echo "-- Combined SQL initialization script" > ./combined/init.sql
echo "-- Generated on $(date)" >> ./combined/init.sql
echo "" >> ./combined/init.sql

# First add seed.sql
cat ./seed.sql >> ./combined/init.sql
echo "\n-- End of seed.sql\n" >> ./combined/init.sql

# Add demographics SQL files in numerical order
echo "-- Demographics SQL files" >> ./combined/init.sql
for file in $(ls -v ./sql/profile/demographics/V*.sql); do
  echo "\n-- File: $file\n" >> ./combined/init.sql
  cat "$file" >> ./combined/init.sql
  echo "\n-- End of $file\n" >> ./combined/init.sql
done

# Add economics SQL files in numerical order
echo "-- Economics SQL files" >> ./combined/init.sql
for file in $(ls -v ./sql/profile/economics/v*.sql); do
  echo "\n-- File: $file\n" >> ./combined/init.sql
  cat "$file" >> ./combined/init.sql
  echo "\n-- End of $file\n" >> ./combined/init.sql
done

echo "Combined SQL file generated at ./combined/init.sql"
