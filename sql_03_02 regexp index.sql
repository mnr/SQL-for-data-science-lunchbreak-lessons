# regexp_instr()
# regexp_substr()

# regexp_inst() returns index of match
SELECT regexp_instr(first_name, '^*n[aeiou]'), first_name
FROM actor

# regexp_instr used in real life...
# notice "having" instead of "where"
SELECT distinct regexp_instr(first_name, '^*n[aeiou]') as nIdx, first_name
FROM actor
having nIdx > 0
order by nIdx DESC

# compare to regexp_substr
SELECT regexp_substr(first_name, '^*n[aeiou]'), first_name
FROM actor

# and the real life example
SELECT distinct regexp_substr(first_name, '^*n[aeiou]') as nIdx, first_name
FROM actor
having nIdx is not null
order by nIdx