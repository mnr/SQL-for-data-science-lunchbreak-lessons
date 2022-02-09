/*
SQL for Data Professionals: Lunchbreak Lessons

SELECT [HAVING] (with functions)
WHERE doesn't work with functions such as count()
Instead...use HAVING

HAVING appears after GROUP BY and before ORDER BY

Sample Database: Sakila - https://dev.mysql.com/doc/sakila/en/
*/


SELECT 
    last_name, count(last_name) 
FROM
    actor
GROUP BY last_name
-- WHERE lastnameCount > 3 
HAVING count(last_name) > 3
ORDER BY count(last_name) DESC