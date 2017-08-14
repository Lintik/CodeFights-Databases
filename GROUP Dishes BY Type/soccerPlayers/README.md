You have a table __soccer_team__ that contains information about the players in your favorite soccer team. This table has the following structure:

* id: the unique ID of the player;
* first_name: the first name of the player;
* surname: the last name of the player;
* player_number: the number that the player wears (the number is guaranteed to be unique).

Create a semicolon-separated list of all the players, sorted by their numbers, and put this list in a table under a column called players. The information about each player should have the following format: first_name surname #number.

__Example__

For the following table __soccer_team__

|id|	first_name|	surname|	player_number|
|---|---|---|
|1|	Alexis|	Sanchez|	7|
|2|	Petr|	Cech|	33|
|3|	Hector|	Bellerin	|24|
|4|	Olivier|	Giroud|	12|
|5|	Theo|	Walcott|	14|
|6|	Santi	|Cazorla	|19|

the output should be

|players|
|---|
|Alexis Sanchez #7; Oliver Giroud #12; Theo Walcott #14; Santi Cazorla #19; Hector Bellerin #24; Petr Cech #33|

[time limit] 10000ms (mysql)
