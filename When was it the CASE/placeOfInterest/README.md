You are trying to decide where you want to go on your vacation, so your travel agency has provided you with a database of possible destinations.

This database contains the table __countryActivities__, which has the following structure:

* id: the unique id of the record;
* country: the country name;
* region: the region of this country;
* leisure_activity_type: the type of activity provided in the region. This can only be equal to one of the following values: Adventure park, Golf, Kart racing, River cruise;
* number_of_places: the number of resorts in the region at which you can do this activity.

You want to see how many resorts in each country provide the activities you are interested in before you decide where to go on your vacation, but it's hard to do this using only the table provided by your travel agency. To make things easier, you have decided to create a new table with a better structure.

Given the __countryActivities__ table, compose the resulting table with five columns: country, adventure_park, golf, river_cruise and kart_racing. The first column should contain the country name, while the second, third, fourth, and fifth columns should contain the number of resorts in the country that offer Adventure park, Golf, River cruise, and Kart racing, respectively. The table should be sorted by the country names in ascending order.

__Example__

For the following table __countryActivities__

|id|	country	|region	|leisure_activity_type|	number_of_places|
|---|---|---|---|---|
|1|	France	|Normandy	|River| cruise|	2|
|2|	Germany	|Bavaria	|Golf|	5|
|3|	Germany	|Berlin	|Adventure| park|	2|
|4|	France	|Ile-de-France	|River |cruise|	1|
|5|	Sweden|	Stockholm	|River |cruise|	3|
|6|	France|	Normandy	|Kart| racing	|4|

the output should be

|country|	adventure_park|	golf|	river_cruise|	kart_racing|
|---|---|---|---|---|
|France|	0|	0|	3|	4|
|Germany|	2|	5|	0|	0|
|Sweden|	0|	0|	3|	0|

[time limit] 10000ms (mysql)
