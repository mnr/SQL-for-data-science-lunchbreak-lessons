/*
SQL for Data Professionals: Lunchbreak Lessons

SELECT [AS]

assign an alias to a column or value
... can be used with GROUP BY, ORDER BY, or HAVING clauses
... can't be used with where
... changes the name of the column in results table

Sample Database: Sakila - https://dev.mysql.com/doc/sakila/en/
*/


/* 
Why use AS?

SELECT 
    last_name, count(last_name) 
FROM
    actor
GROUP BY last_name
HAVING count(last_name) > 3
ORDER BY count(last_name) DESC
*/

-- this is clearer...
SELECT 
    last_name, count(last_name) AS LastNameCount
FROM
    actor
GROUP BY last_name
HAVING LastNameCount > 3
ORDER BY LastNameCount DESC;

/* this won't work (where can't use AS)
SELECT 
    last_name, count(last_name) AS LastNameCount
FROM
    actor
GROUP BY last_name
WHERE LastNameCount > 3
-- HAVING LastNameCount > 3
ORDER BY LastNameCount DESC
*/


