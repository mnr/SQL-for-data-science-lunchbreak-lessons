/*
SQL for Data Professionals: Lunchbreak Lessons

SELECT [ORDER BY]
asc = ascending. Default
desc = descending

Sample Database: Sakila - https://dev.mysql.com/doc/sakila/en/
*/

SELECT 
    last_name
FROM
    actor
-- ORDER BY last_name;
-- ORDER BY last_name desc;
-- ORDER BY 2;

/* ...this works
GROUP BY last_name
ORDER BY last_name DESC;
*/

/* ...this doesn't
ORDER BY last_name DESC
GROUP BY last_name
*/
