/*
SQL for Data Professionals: Lunchbreak Lessons

SELECT [GROUP BY]

ASC and DESC no longer permitted for GROUP BY
Instead, use ORDER BY with GROUP BY (in next session)
WITH ROLLUP sums all GROUP BY aggregates

Sample Database: Sakila - https://dev.mysql.com/doc/sakila/en/
*/

SELECT 
    last_name, COUNT(last_name)
FROM
    actor
GROUP BY last_name;
-- GROUP BY 1;

/* 
SELECT 
    last_name, COUNT(last_name)
FROM
    actor
GROUP BY last_name with rollup ;
*/