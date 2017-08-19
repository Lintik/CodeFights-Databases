You are developing an alarm clock app that works as follows: the user can set a date and a time, and the app will ring every week at the given time starting at the given date until the end of the current year.

The starting date is the only record in the __userInput__ table of the following structure:

* input_date: the date and time of the first alarm (of a DATETIME type).

Given the table, your task is to compose the resulting table with a single column alarm_date. This column should contain all dates (including time) when the alarm clock will ring in ascending order.

__Example__

For the following table __userInput__

|input_date|
|---|
|2016-10-23| 22:00:00|
the output should be

|alarm_date|
|---|
|2016-10-23 22:00:00|
|2016-10-30 22:00:00|
|2016-11-06 22:00:00|
|2016-11-13 22:00:00|
|2016-11-20 22:00:00|
|2016-11-27 22:00:00|
|2016-12-04 22:00:00|
|2016-12-11 22:00:00|
|2016-12-18 22:00:00|
|2016-12-25 22:00:00|

![alt text](https://github.com/Lintik/Databases/blob/master/Time%20River%20Revisited/alarmClocks/example.jpg)

* [time limit] 10000ms (mysql)
