Description
-----------
Adds extra statistics to [Lahman's Baseball Database](http://www.seanlahman.com/baseball-archive/statistics/)
of MLB statistics.

Requirements
------------
[MySQL](https://www.mysql.com/)
[Lahman's Baseball Database](http://www.seanlahman.com/baseball-archive/statistics/)

Usage
-----
**Unix**

```sh
chmod u+x install.sh
./install.sh
```

The install script will ask for your MySQL *root* user's password.  If the
script does not find the *lahman* database then it will ask for the SQL file
and install the database for you.  The SQL file for the *lahman* database
can be downloaded at the above website.

**Windows**

Each SQL file will need to be run manually and in the following order:

* create-indexes.sql
* franchises.sql
* lgbatting.sql
* calculate-batting-percentages.sql
* battingcareer.sql


