/*
Concatenation:
CONCAT
CONCAT_WS

Sample Database: Sakila - https://dev.mysql.com/doc/sakila/en/
*/
SELECT 
    concat("Hello ", first_name, "::",last_name)
FROM
    actor
WHERE
    last_name = "Cage" ;
    

SELECT 
    concat_WS('::',"Hello" , first_name, last_name)
FROM
    actor
WHERE
    last_name = 'Cage' ;
