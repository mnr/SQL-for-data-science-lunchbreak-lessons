/*
SQL for Data Professionals: Lunchbreak Lessons

SELECT [ STRAIGHT_JOIN ]

STRAIGHT_JOIN is similar to JOIN, 
 except that the left table is always read before 
 the right table. This can be used for those (few) 
 cases for which the join optimizer processes the 
 tables in a suboptimal order.

Sample Database: Sakila - https://dev.mysql.com/doc/sakila/en/
*/

SELECT 
    last_name, film_id
FROM
    actor
        STRAIGHT_JOIN
    film_actor
