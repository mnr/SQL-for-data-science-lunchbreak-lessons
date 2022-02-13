/*
SQL for Data Professionals: Lunchbreak Lessons

RAND(N)
N is the seed. Specify it to get a repeatable random number
Returns value between 0 and 1

Sample Database: Sakila - https://dev.mysql.com/doc/sakila/en/
*/

/* sorts all rows by a random number
select
	last_name
from
	actor
order by rand()
*/

/* return random rows
select
	last_name
from
	actor
WHERE rand() > .5
*/

