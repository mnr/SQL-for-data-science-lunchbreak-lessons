# regexp
# regexp_like()
# rlike

# REGEX is similar to LIKE but uses full regular expressions
# REGEX is REGEXP_LIKE() is RLIKE (synonyms)
SELECT 
    IF('brillig' REGEXP '^[bt].*illi.*',
        'Itz a match!',
        'Not a match'),
	IF(REGEXP_LIKE('thrilling', '^[bt].*illi.*'),
        'Itz a match!',
        'Not a match'),
	IF('drilling' RLIKE '^[bt].*illi.*',
        'Itz a match!',
        'Not a match');
        
SELECT 
    first_name, last_name
FROM
    actor
WHERE
    REGEXP_LIKE(last_name, '^Ber.*');
# ...these also work...
#    last_name REGEXP '^Ber.*';
#    last_name RLIKE '^Ber.*';
