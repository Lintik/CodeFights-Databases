You are managing a small newspaper subscription service. Anyone who uses it can subscribe to a large number of different newspapers for a full year or just a half year.

The information about subscriptions is stored in the __full_year__ and __half_year__ tables, which have the following structures:

* __full_year__:
  * id: the unique subscription ID;
  * newspaper: the newspaper's name;
  * subscriber: the name of the subscriber.
* __half_year__
  * id: the unique subscription ID;
  * newspaper: the newspaper's name;
  * subscriber: the name of the subscriber.
  
Given the __full_year__ and __half_year__ tables, compose the result as follows: The resulting table should have one column subscriber that contains all the distinct names of anyone who is subscribed to a newspaper with the word Daily in its name. The table should be sorted in ascending order by the subscribers' first names.

__Example__

The following tables __full_year__

|id|	newspaper|	subscriber|
|---|---|---|
|1|	The Paragon Herald|	Crissy Sepe|
|2|	The Daily Reporter|	Tonie Moreton|
|3|	Morningtide Daily|	Erwin Chitty|
|4|	Daily Breakfast	|Tonie Moreton|
|5|	Independent Weekly|	Lavelle Phu|

and __half_year__

|id|	newspaper|	subscriber|
|---|---|---|
|1|	The Daily Reporter	|Lavelle Phu|
|2|	Daily Breakfast|	Tonie Moreton|
|3|	The Paragon Herald	|Lia Cover|
|4|	The Community Gazette	|Lavelle Phu|
|5|	Nova Daily|	Lia Cover|
|6|	Nova Daily|	Joya Buss|

the output should be

|subscriber|
|---|
|Erwin Chitty|
|Joya Buss|
|Lavelle Phu|
|Lia Cover|
|Tonie Moreton|

[time limit] 10000ms (mysql)
