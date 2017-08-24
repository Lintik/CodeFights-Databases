You are managing a restaurant recommendation service that has recently started to gain popularity.

The information about the restaurants is currently stored in the __restaurants__ table with the following structure:

* id: unique id of the restaurant;
* name: the restaurant's name.

As the table grew you decided to extend it, in particular add the description (VARCHAR(100), the description of the restaurant) and active (INT, 0 or 1 if it works or closed respectively) columns.

Add these two new columns to the __restaurants__ table using the following rules for all records:

* the description should be set to "TBD" (for To Be Defined).
* active should be set to 1.

__Example__

The following table __restaurants__

|id|	name|
|---|---|
|1|	The Big City Barbecue|
|2|	Roadhouse|
|3|	Hibiscus|
|4|	The Waterfront Courtyard|
|5|	The Royal Spices|

should become

|id|	name|	description|	active|
|---|---|---|---|
|1|	The Big City Barbecue|	TBD|	1|
|2|	Roadhouse|	TBD|	1|
|3|	Hibiscus	|TBD|	1|
|4|	The Waterfront Courtyard|	TBD|	1|
|5|	The Royal Spices|	TBD|	1|

* __[time limit] 10000ms (mysql)__
