# strcmp

# STILL WORKING ON THIS...
        
set @firstString := 'bbb';
set @secondString := 'bbb';

SELECT 
    @firstString, @secondString,
    CASE STRCMP(@firstString, @secondString)
        WHEN - 1 THEN concat(@firstString, ' is before ', @secondString )
        WHEN 0 THEN concat(@firstString, ' is equal to ', @secondString )
        WHEN 1 THEN concat(@firstString, ' is after ', @secondString )
        ELSE 'why are we here?'
    END;

# comparison is by sort order
# case insensitive

# real example
SELECT 
    first_name,
    CASE STRCMP(first_name, 'nick')
        WHEN - 1 THEN 'first half'
        WHEN 0 THEN 'midpoint'
        WHEN 1 THEN 'second half'
        ELSE 'why are we here?'
    END
FROM
    actor