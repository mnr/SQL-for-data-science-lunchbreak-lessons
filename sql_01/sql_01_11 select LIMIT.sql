/*
SQL for Data Professionals: Lunchbreak Lessons

SELECT [LIMIT]
# of rows 
...or...
Offset, # of rows
...which is equivalent to...
LIMIT row count OFFSET ##
Sample Database: Sakila - https://dev.mysql.com/doc/sakila/en/
*/

SELECT 
    last_name, first_name
FROM
    actor
-- LIMIT 100;
-- LIMIT 10,100;
-- LIMIT 100 OFFSET 10
-- LIMIT 10,1000000000
