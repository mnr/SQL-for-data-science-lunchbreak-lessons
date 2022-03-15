# https://dev.mysql.com/doc/refman/5.7/en/user-variables.html

set @oneVariable = 'Save the Nature';
select @oneVariable;

# values can be returned from a select statement
set @twoVariable = (select last_name from actor where actor_id = 50 );
select @twoVariable;

# only one row & column allowed. These fail...
set @threeVariable = (select last_name from actor where actor_id > 50 );
set @threeVariable = (select * from actor where actor_id = 50 );