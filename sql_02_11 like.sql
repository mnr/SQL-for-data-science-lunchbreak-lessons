# LIKE for string comparison

SELECT 
    IF('brillig' LIKE 'brillig',
        'Itz a match!',
        'Not a match');
        
# spaces are significant
SELECT 
    IF('brillig' LIKE 'brillig ',
        'Itz a match!',
        'Not a match');

# simple wildcards
# % is 0 or more characters
# _ is exactly one character

SELECT 
    IF('brillig' LIKE '%i__I%',
        'Itz a match!',
        'Not a match');

# \ is escape to test for %, _, or \ ( i.e. \% or \_ or \\)
# not case sensitive
# numbers treated like strings
SELECT 
    IF('12345' LIKE '%3_5',
        'Itz a match!',
        'Not a match');