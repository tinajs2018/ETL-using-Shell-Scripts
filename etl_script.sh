#!/bin/bash

# Sample ETL script

# Extract: Read data from source
echo "Extracting data..."
cp source_data.csv /tmp/data.csv

# Transform: Process the data
echo "Transforming data..."
# Example transformation: Convert all names to uppercase
awk -F',' 'BEGIN { OFS = "," } { $2 = toupper($2); print }' /tmp/data.csv > /tmp/transformed_data.csv

# Load: Save the data to the target destination
echo "Loading data..."
mv /tmp/transformed_data.csv target_data.csv

echo "ETL process completed."
