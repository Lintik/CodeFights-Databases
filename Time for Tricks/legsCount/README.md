You really love counting stuff. In fact, right now you're sitting on a meadow and counting all the legs you see there! There are some people, some dogs, and some cats on the meadow. You're pretty confident that each human has 2 legs and that cats and dogs have 4 legs each.

The information about all the creatures on the meadow is stored in the table __creatures__. It has the following structure:

* id: the unique creature ID;
* name: the creature's name;
* type: the creature's type - "human", "cat", or "dog". This column has ENUM type.

You want to calculate the total number of legs in the meadow. Given the table __creatures__, build a new table that only contains one column summary_legs and has only one row with the total number of legs that you can see.

__Example__

For the following table __creatures__

|id|	name|	type|
|---|---|---|
|1|	Mike|	human|
|2|	Misty|	cat|
|3|	Max|	dog|
|4|	Tiger|	human|

the output should be

|summary_legs|
|---|
|12|

There are 2 humans, 1 cat, and 1 dog, so there are 2 * 2 + 1 * 4 + 1 * 4 = 12 legs in total.

[time limit] 10000ms (mysql)
