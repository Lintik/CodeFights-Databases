You're doing research about academic achievement, and you're studying one particular group of students at a local university. Find the average grade of the five most successful students in this group.

The information about the students' grades is stored in a table called __students__, which has the following attributes:

* student_id: the unique identifier of the student;
* student_name: the name of the student;
* grade: the grade that the student achieved.

The result should be a table with one column average_grade and one row that contains the average grade of the five students with the highest grades. The answer should be formatted to 2 digits after the decimal point. It is guaranteed that the five most successful students can be uniquely identified.

__Example__

For the following table __students__

|student_id|	student_name|	grade|
|---|---|---|
|1|	Oliver Smith	|3.2|
|2|	Jacob Bell	|2.9|
|3|	William Thompson	|3.1|
|4|	Sophie Clark	|3.5|
|5|	Daniel Palmer	|3.6|
|6|	Emily Morris	|4.0|
|7|	Zachary Mills	|2.5|

the output should be

|average_grade|
|---|
|3.48|

The top 5 grades for this group are 4.0, 3.6, 3.5, 3.2, and 3.1, so their sum is equal to 17.4 and 17.4 / 5 = 3.48.

__[time limit] 10000ms (mysql)__
