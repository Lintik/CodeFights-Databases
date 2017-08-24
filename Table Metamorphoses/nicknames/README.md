You've just opened a registration for the online game you are about to finish developing.

Everyone who wanted to reserve their nicknames for the release of the game had to submit their info using a special form on your website.

The reserved nicknames were stored in the __reservedNicknames__ table with the following structure:

* id: the unique id of the registered user;
* nickname: the nickname submitted by the user with id id.

When you started going through these nicknames you realized that you forgot one important thing: all nicknames should contain exactly 8 characters.

You have no time to fix this issue properly right now, so you decided to just add rename - to the invalid nicknames with corresponding ids so it would be easier for you to deal with them latter.

Given the __reservedNicknames__ table, change all rows with invalid nicknames by prepending rename - to both nickname and id.

__Example__

The following table __reservedNicknames__

|id|	nickname|
|---|---|
|id001|	alex1990|
|id142|	killer007|
|id15674|	prohunter|
|id4242	|acc0rdin|
|id616	|Zoneg|
|id9999	|butch|

should become

|id|	nickname|
|---|---|
|id001|	alex1990|
|id4242|	acc0rdin|
|rename - id142|	rename - killer007|
|rename - id15674|	rename - prohunter|
|rename - id616|	rename - Zoneg|
|rename - id9999|	rename - butch|

* __[time limit] 10000ms (mysql)__
