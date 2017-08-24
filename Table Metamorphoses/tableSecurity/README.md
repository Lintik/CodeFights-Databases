As the head of a company you decided that it's time to introduce access control and to restrict access to __employees__ table for all the employees. The table has the following structure:

* id: unique employee id;
* name: the name of the employee;
* date_joined: the date the employee was hired;
* salary: the salary of the employee;

As a first step towards improving security you decided to create a view which would be used by the employees instead of direct access to the table.

Create a view which will select all the columns from the __employees__ table but leave only id and name intact. date_joined column should contain the year the employee joined the company, and salary column should be filled with - (single dashes).

__Example__

The following table __employees__

|id|	name	|date_joined|	salary|
|---|---|---|---|
|1|	Farah Dahlquist	|2006-03-05	|2000|
|2|	Yessenia Lininger	|2008-04-11	|2500|
|3|	Justin Penrose|	2009-12-12	|2400|
|4|	Josphine Clickner|	2007-07-25	|3000|
|5|	Linwood Mcquiston	|2011-01-15|	4000|

the output should be

|id|	name	|date_joined	|salary|
|---|---|---|---|
|1|	Farah Dahlquist|	2006	|-|
|2|	Yessenia Lininger	|2008	|-|
|3|	Justin Penrose|	2009	|-|
|4|	Josphine Clickner|	2007	|-|
|5|	Linwood Mcquiston|	2011	|-|

* __[time limit] 10000ms (mysql)__
