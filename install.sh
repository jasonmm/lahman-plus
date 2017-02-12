#!/bin/bash
#
# Usage: ./install.sh
#

# We need the root password throughout so we prompt the user for it here.
read -s -p "Enter MySQL root user password: " rootpwd
echo 

# See if a database named 'lahman' already exists.
#lahmanExists=`mysql --silent --silent --batch -u root -p$rootpwd --execute="SELECT COUNT(*) FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'lahman'"`
#if [ $lahmanExists = 1 ]; then
#	echo "A database named 'lahman' already exists. Nothing to do."
#	exit 0;
#fi

# Make sure the source data is up-to-date.
if [ ! -d "baseballdatabank" ]; then
	echo "Cloning the 'baseballdatabank' repository..."
	git clone https://github.com/chadwickbureau/baseballdatabank.git
	cd baseballdatabank
else
	echo "Updating the 'baseballdatabank' repository..."
	cd baseballdatabank
	git pull origin master
fi

# Create the database and tables.
cd core
echo "Creating the database..."
mysql -u root -p$rootpwd -e "DROP DATABASE IF EXISTS lahman"
mysql -u root -p$rootpwd -e "CREATE DATABASE lahman"
mysql -u root -p$rootpwd lahman < ../../lahman-create-tables.sql || exit $?

# Import the data into the 'lahman' database.
# Only CSV files contain data so non-CSV files are ignored.
# The table name is the lowercased filename (sans extension).
echo "Importing the data..."
for filename in *; do 
	if [ $(echo "$filename" | cut -d. -f2) = "csv" ]; then
		tablename=$(echo "$filename" | tr '[:upper:]' '[:lower:]' | cut -d. -f1)
	else
		continue
	fi
	mysql -u root -p$rootpwd lahman \
		-e "LOAD DATA INFILE '`pwd`/$filename' REPLACE INTO TABLE $tablename FIELDS TERMINATED BY ',' IGNORE 1 LINES" || exit $?
done
cd ../..

echo "Finished."

