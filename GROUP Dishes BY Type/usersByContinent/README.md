You are curious about the geographical distribution of CodeFights users, so you have created a list of countries along with the number of registered users from each. Your task now is to calculate the number of users on each continent.

The information about the countries is stored in a table __countries__, which has 3 columns:

* country: the name of the country;
* continent: the name of the continent where the country is located;
* users: the number of users registered on CodeFights in the country.

The answer should be a table with 2 columns, continent and users, sorted by the number of users in decreasing order.

__Example__

For the following table __countries__

|country	|continent|users|
|---|---|---|
|Armenia	|Europe	|1000|
|France|	Europe	|1300|
|Russia	|Europe	|3000|
|USA|	North America|	5000|

the resulting table should be

|continent|	users|
|---|---|
|Europe|	5300|
|North America	|5000|

[time limit] 10000ms (mysql)
