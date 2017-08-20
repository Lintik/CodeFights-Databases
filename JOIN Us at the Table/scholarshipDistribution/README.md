In the past, straight "A" students have gotten scholarships to reward them for their excellent grades. This year, though, there has been an increase in the number of detentions given to excellent students, so the administration is going to change the rules. In order to encourage the levels of misbehavior to go down, only well-behaved students will be awarded with scholarships this year.

Information about the straight "A" students is stored in the table __candidates__, and information about all the detentions is stored in the table __detentions__. Here are their structures:

* __candidates__
  + candidate_id: the unique candidate ID;
  + candidate_name: the name of the candidate;
* __detentions__
  + detention_date: the date of the detention (of the date type);
  + student_id: the id of the student who got the detention.
  
Your task is to figure out which students should get the scholarships this year. Given the __candidates__ and __detentions__ tables, return a table with a single student_id column containing the IDs of the students who should get scholarships - students from the __candidates__ table who've never gotten a detention. The IDs of the students in the resulting table should be sorted in ascending order.

__Example__

For the following tables __candidates__

|candidate_id|	candidate_name|
|---|---|
|12|	Gerlinde Addens|
|35|	Gerbern Abbey|
|44|	Edmond Ramsay|
|58|	Svanhild Lacey|
|103|	Nita Simons|

and __detentions__

|detention_date	|student_id|
|---|---|
|2015-10-21|	12|
|2015-11-19|	91|
|2016-02-11|	87|
|2015-12-26|	44|
|2016-01-19|	91|
|2015-09-10|	91|
|2015-12-30|  12|
|2016-05-19|	58|

the output should be

|student_id|
|---|
|35|
|103|

Only Gerbern Abbey and Nita Simons never got detention, so they will get the scholarships this year.

The dates in the example are given in the YYYY-MM-DD format.

* __[time limit] 10000ms (mysql)__
