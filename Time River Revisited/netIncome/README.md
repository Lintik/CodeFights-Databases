You own a small company, and you keep track of its income in the __accounting table__, which has the following structure:

* date: a unique date on which your company was open;
* profit: the amount of money your company earned that day;
* loss: the amount of money your company lost that day.

You've decided to sell the company, and in order to make the offer more appealing to potential buyers you need to create a financial report.

Given the __accounting__ table, compose the resulting table with three columns: year, quarter and net_profit. The first column should contain the year, the second one should contain the quarter of that year, and the third one should contain the net income (profit - loss difference) of your company during that period. The resulting table should be sorted by the year in ascending order. If there are several rows with the same year, sort them by the quarter in ascending order.

Don't include year/quarter in the answer if there is no entry for it in the __accounting__ table.

__Example__

For the following table __accounting__

|date|	profit|	loss|
|---|---|---|
|2006-01-01|	100	|15|
|2006-07-15|	40	|100|
|2006-08-01|	50	|50|
|2006-11-11|	100	|50|
|2006-12-01|	50	|80|
|2007-05-03|	42	|16|

the output should be

|year|	quarter|	net_profit|
|---|---|---|
|2006|	1	|85|
|2006|	3	|-60|
|2006|	4|	20|
|2007|	2|	26|

[time limit] 10000ms (mysql)
