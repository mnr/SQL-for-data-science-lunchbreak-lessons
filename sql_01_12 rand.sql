/*
SQL for Data Professionals: Lunchbreak Lessons

RAND(N)
N is the seed. Specify it to get a repeatable random number
Returns value between 0 and 1

To return a value between i and j
FLOOR(i + RAND() * (j − i))

Sample Database: Sakila - https://dev.mysql.com/doc/sakila/en/
*/

/*
SELECT 
-- last_name, rand()
-- last_name, rand(3)
-- last_name, FLOOR(5 + RAND() * 3) -- i=5, j=8
last_name, actor_id, FLOOR(1 + rand() * (actor_id - 1))
FROM
    actor
*/    



