As a young naturalist, you've been studying the inhabitants of the nearby woods for the past several months. You've just come across some footprints you've never seen before. To learn more about the habitat of the animal that left them, you marked the footprints locations on your map.

The information about the places where the animal left its footprints is stored in the table __places__. Here is its structure:

* x: the x-coordinate of the place;
* y: the y-coordinate of the place.

It is guaranteed that pairs (x, y) are unique.

Now you want to find the area of the animal's habitat. You decided that the convex hull of the marked points is a good first approximation of the habitat, so you want to find the area of this hull.

Given the __places__ table, return a table that has only one column area and consists of a single row: the area of the convex hull. It is guaranteed that the resulting area is greater than 0.

__Example__

For the following table __places__

|x|	y|
|---|---|
|0|	0|
|1|	2|
|2|	1|
|5|	1|
|5|	2|

the output should be

|area|
|---|
|6.5|

Here is an illustration of the given points and their convex hull:

![alt text](https://github.com/Lintik/Databases/blob/master/Specialties/habitatArea/example.png)

Note that you should return the exact answer without any trailing zeros.

[time limit] 10000ms (mysql)

SELECT  ST_Area(ST_ConvexHull(ST_MPointFromText(CONCAT('MULTIPOINT(', GROUP_CONCAT(CONCAT_WS(' ', x, y)), ')')))) AS area
    FROM places;
