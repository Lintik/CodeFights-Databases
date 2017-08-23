You are developing an application for working with different currencies. You've decided to represent each currency using three letter codes from ISO 4217.

You've parsed some data that you found on the Internet and stored it in a __currencies__ table, which has the following structure:

code: the unique code of the currency;
country: the name of the country in which this currency is used.
Unfortunately, your parser didn't check the length of the codes and some erroneous data got into the table by mistake.

Your task is to delete all rows from the __currencies__ table in which code is not exactly three letters long.

__Example__

The following table __currencies__

|code|	country|
|---|---|
|AD|	Andorra|
|AUD|	Australia|
|BRL|	Brazil|
|MXN|	Mexico|
|RUB|	Russia|
|RUR|	Russia|
|SEKR|	Sweden|
|USD|	USA|

should become

|code|	country|
|---|---|
|AUD|	Australia|
|BRL|	Brazil|
|MXN|	Mexico|
|RUB|	Russia|
|RUR|	Russia|
|USD|	USA|

* __[time limit] 10000ms (mysql)__
