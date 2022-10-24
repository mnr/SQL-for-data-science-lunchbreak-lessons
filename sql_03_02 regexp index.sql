# regexp_instr()
# regexp_substr()
# substring_index

# regexp_inst() returns index of match
SELECT regexp_instr(first_name, '^*n[aeiou]'), first_name
FROM actor

# regexp_instr used in real life...
# notice "having" instead of "where"
SELECT distinct regexp_instr(first_name, '^*n[aeiou]') as nIdx, first_name
FROM actor
having nIdx > 0
order by nIdx DESC

# substring_index is similar but no regex
# also needs count
# substring_index(string, searchFor, count)
SELECT substring_index(first_name, 'N', 2), first_name
FROM actor

# compare to regexp_substr
SELECT regexp_substr(first_name, '^*n[aeiou]'), first_name
FROM actor

# and the real life example
SELECT distinct regexp_substr(first_name, '^*n[aeiou]') as nIdx, first_name
FROM actor
having nIdx is not null
order by nIdx
