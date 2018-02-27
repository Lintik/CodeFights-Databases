Your friend wants to become a professional tour guide and travel all around the world. In pursuit of this dream, she enrolled in tour guide school. The professors in this school turned out to be very demanding, and one of them gave your friend a difficult assignment that she has to finish over the weekend.

Here's the assignment: Given a list of countries, your friend should identify all the countries that are in Africa. To help her, you have decided to write a function that will find all such countries from any set of countries. The **countries** table in which the countries are stored has the following structure:

* `name`: the name of the country;
* `continent`: the continent on which the country is situated;
* `population`: the country's population.

Your task is to return a new table that has the same columns, but that only contains the countries from Africa. The countries should be sorted alphabetically by their names.

**Example**

For the following table **countries**

name|	continent|	population|
|---|---|---|
|Austria	|Europe	|8767919|
|Belize|	North America	|375909|
|Botswana	|Africa	|2230905|
|Cambodia	|Asia	|15626444|
|Cameroon	|Africa|	22709892|

the output should be

|name	|continent	|population|
|---|---|---|
|Botswana	|Africa	|2230905|
|Cameroon	|Africa	|22709892|

[time limit] 10000ms (mysql)
