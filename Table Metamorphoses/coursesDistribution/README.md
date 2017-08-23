You work with a professor of applied mathematics and informatics to create and distribute this year's plan of courses for students.

You were almost finished when you noticed that a couple of fixes yet need to be done. There are courses which names' are marked as '-toremove', so you decided to remove them permanently. Prior to removing them, you'd like to make sure that deleting a course would also remove it from all the related tables automatically.

All courses are stored in __courses__ table that has the following structure:

* id: unique id of the course;
* name: unique name of the course that may end with '-toremove', which means that the course is about to be removed;
* description: description of the course.

There are also __groupcourses__ and __groupexams__ tables which represent courses assigned to groups and examination dates of courses for each group, respectively. Here are their structures:

* __groupcourses:__
  + group_id: group id;
  + course_id: course id;
* __groupexams:__
  + date: the date of the exam;
  + group_id: id of the group taking the exam;
  + course_id: id of the course.
  
Given courses, __groupcourses__ and __groupexams__ tables you need to properly set up foreign keys, so that after a record is deleted from the __courses__ table, records that correspond to the deleted course are also deleted from __groupcourses__ and __groupexams__. Please note that groupexams can only contain pairs from groupcourses and there can be multiple exam dates for the same group_id, course_id combination. It is guaranteed that adding correct foreign keys won't raise any errors.

__Example__

For the following tables __courses__

|id|	name|	description|
|---|---|---|
|1|	Linear algebra	|Basis of matrix theory and linear algebra|
|2|	Geometry	|NULL|
|3|	Determinants and matrices|	NULL|
|4|	Matlab-toremove	|Matlab 7|

__groupcourses__

|group_id|	course_id|
|---|---|
|1|	1|
|1|	2|
|1|	3|
|2|	1|
|2|	4|

and __groupexams__

|date	|group_id|	course_id|
|---|---|---|
|2010-01-10|	1|	1|
|2010-01-11|	1|	2|
|2010-01-12|	2|	4|

the final result should be

|group_id|	course_id|
|---|---|
|1|	1|
|1|	2|
|1|	3|
|2|	1|

* __[time limit] 10000ms (mysql)__
