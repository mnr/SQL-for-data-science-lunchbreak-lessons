/*
SQL for Data Professionals: Lunchbreak Lessons

SELECT [HAVING] (vs WHERE)

Sample Database: Sakila - https://dev.mysql.com/doc/sakila/en/
*/

SELECT 
    last_name
FROM
    actor
GROUP BY last_name
WHERE last_name LIKE 'Allen'

/* which produces an error
WHERE can't refer to groups or aggregates or calculations
WHERE can't appear after GROUP BY
(remove GROUP BY in above script to correct)

instead, HAVING can refer to groups
 */

SELECT 
    last_name
FROM
    actor
GROUP BY last_name
HAVING last_name LIKE 'Allen'