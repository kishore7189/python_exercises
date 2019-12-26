#!/bin/sh

if [ "${DB_NAME}" == "" ]; then
    echo "$0 - Error: Missing env var \$DB_NAME"
    exit 1
fi

# create database name if not exist
echo "-- Creating database name: ${DB_NAME}"
mysql -h $DB_HOST -u $DB_USER --password=$DB_PASS -e "CREATE DATABASE IF NOT EXISTS ${DB_NAME};"

# import database schema
echo "-- Importing schema into database: ${DB_NAME}"
mysql -h $DB_HOST -u $DB_USER --password=$DB_PASS ${DB_NAME} < /home/sitename/public_html/config/database/schema.sql

# show all imported tables
echo "-- Import tables:"
mysql -h $DB_HOST -u $DB_USER --password=$DB_PASS ${DB_NAME} -e "SHOW TABLES;"
