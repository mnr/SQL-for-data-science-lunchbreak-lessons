/*
SQL for Data Professionals: Lunchbreak Lessons

SELECT [ ALL | DISTINCT | DISTINCTROW ]
ALL is the default
DISTINCT returns unique values
DISTINCTROW is synonym for DISTINCT
... so, really only DISTINCT is important

Sample Database: Sakila - https://dev.mysql.com/doc/sakila/en/
*/

SELECT DISTINCT
    last_name
FROM
    actor

/* results of more than one field 
SELECT DISTINCT
    first_name, last_name
FROM
    actor
*/