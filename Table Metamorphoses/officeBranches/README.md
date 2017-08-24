In order to optimize your business, you've decided to merge a couple of your office branches and get rid of the outdated branch types.

The existing office branches and branch types are stored in the tables __branches__ and __branch_types__, respectively. The tables have the following structures:

* __branches:__
  + branch_id: the branch ID;
  + name: the name of the branch;
  + branchtype_id: the branch type ID.
* __branch_types__
  + id: the unique branch ID;
  + name: the name of the branch type.
  
You've decided to start small. As your first step, you want to delete the outdated branch types, all of which end with -outdated, from the __branch_types__ table.

For now, you want to keep all the branches with the deleted branch types in the __branches__ table, but to differentiate them you will set their branchtype_id to NULL. Update the database to make the required changes happen automatically when a record is deleted from __branch_types__.

__Example__

For the following tables __branches__

|branch_id|	name	|branchtype_id|
|---|---|---|
|1|	Frankfurt branch|	2|
|2|	Paris branch	|3|
|3|	New York branch	|2|
|4|	Madrid branch	|1|

and __branch_types__

|id|	name|
|---|---|
|1|	Small-outdated|
|2|	Big|
|3|	Medium|

the output should be

|branch_id	|name|	branchtype_id|
|---|---|---|
|1|	Frankfurt branch	2|
|2|	Paris branch|	3|
|3|	New York branch|	2|
|4|	Madrid branch|	NULL|

* __[time limit] 10000ms (mysql)__
