At the beginning of this academic year you composed a list of clubs and a list of their members. The gathered information is stored in your local database in two tables that have the following structures:

* __clubs__
  + id: unique club id;
  + name: club name;
* __students__
  + id: unique student id;
  + name: student name;
  + club_id: id of the club the student joined.
  
Each student can be a member only of a single club, and it is prohibited to drop a club until the year is over. However, several clubs were closed due to low attendance, and you need to update your database to reflect that. You have already updated the __clubs__ table, and now the __students__ table should be updated as well.

Given the __clubs__ and __students__ tables, return a table containing the records from __students__ that have club_id equal to some id of __clubs__. The table should be sorted by students' ids.

__Example__

For the following table __students__

|id|	name|	club_id|
|---|---|---|
|3|	Richard Gear	|23|
|6|	Jennifer Offencerence|	11|
|14	|Obiten Kenobi|	87|
|36|	Closece|	87|

and __clubs__

|id	|name|
|---|---|
|23	|Theater club|
|64	|Soccer club|
|87|	Glee club|

the output should be

|id|	name	|club_id|
|---|---|---|
|3|	Richard Gear|	23|
|14|	Obiten Kenobi|	87|
|36|	Closece	|87|

* __[time limit] 10000ms (mysql)__
