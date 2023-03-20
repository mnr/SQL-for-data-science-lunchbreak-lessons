# regexp_replace()
# REGEXP_REPLACE(expr, pat, repl[, pos[, occurrence[, match_type]]])

SELECT distinct regexp_replace(first_name, '^*n[aeiou]', "__") , first_name
FROM actor

# start at 3rd char
SELECT distinct regexp_replace(first_name, '^*n[aeiou]', "__", 3) , first_name
FROM actor
