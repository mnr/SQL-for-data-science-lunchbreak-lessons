# https://dev.mysql.com/doc/refman/5.7/en/user-variables.html

# use = or := However - = is sometimes equality so be careful
set @oneVariable = 'Save the Nature';
set @oneVariable := 'Save the Nature';
select @oneVariable;

# case insensitive
# @oneVariable is identical to @ONEVARIABLE

# values can be returned from a select statement
set @twoVariable = (select last_name from actor where actor_id = 50 );
select @twoVariable;

# only one row & column allowed. These fail...
set @threeVariable = (select last_name from actor where actor_id > 50 );
set @threeVariable = (select * from actor where actor_id = 50 );

# a practical use
# Note use of := vs =
select
	@fourVariable := max(actor_id)
from
	actor;
    
select @theFilm := film_id
from film_actor
where actor_id = @fourVariable;

select title, description
from film
where film_id = @theFilm;