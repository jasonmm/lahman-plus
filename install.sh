#!/bin/bash

# We need the root password throughout so we prompt the user for it here.
read -s -p "Enter MySQL root user password: " rootpwd
echo 

# Import the lahman database.
lahmanExists=`mysql --silent --silent --batch -u root -p$rootpwd --execute="SELECT COUNT(*) FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = 'lahman'"`
if [ $lahmanExists = 0 ]; then
	# Get the filename of the lahman database's SQL.
	read -s -p "Enter the filename of the lahman database's SQL file: " lahmanSQL
	echo
	echo "Importing lahman database..."
	mysql -u root -p$rootpwd < $lahmanSQL || exit $?
else
	echo "Skipping lahman import, database already exists."
fi

# Add indexes. We use MySQL's "force" option to move past indexes 
# that already exist.
echo "Adding missing indexes (ignore duplicate errors)..."
mysql --force -u root -p$rootpwd lahman < create-indexes.sql || exit $?

# Create franchises batting statistics
echo "Creating franchises batting stats..."
mysql -u root -p$rootpwd lahman < franchises.sql || exit $?

# Create league batting statistics.
echo "Creating league batting stats..."
mysql -u root -p$rootpwd lahman < lgbatting.sql || exit $?

# Calculate player statistics.
# MySQL's "force" option is used here to skip past ALTER TABLE's 
# "column exists" errors.
echo "Calculating player yearly averages..."
mysql --force -u root -p$rootpwd lahman < calculate-batting-percentages.sql || exit $?

echo "Creating player career statistics..."
mysql -u root -p$rootpwd lahman < battingcareer.sql || exit $?
# Calculating LMBCI cannot be done with a simple query.  So we use a for loop
# to run the query for every player in the "battingcareer" table.
players=$(mysql -u root -p$rootpwd lahman -Bse "SELECT playerID FROM battingcareer;")
# Read in the SQL that calculates career LMBCI for a specific player.  This
# for loop does a '$lmbciSql = get_file_contents("battingcareer-lmbci.sql")'.
set -f
lmbciSql=""
for line in $(cat "battingcareer-lmbci.sql" | tr -c "[:print:]" " ")
do
	lmbciSql="${lmbciSql} $line"
done
# For each player calculate their career LMBCI.
for playerId in $players; do 
	sql=${lmbciSql//\?/$playerId}
	mysql -u root -p$rootpwd lahman -Bse "$sql"
done


echo "Finished."

