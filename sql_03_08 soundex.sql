# soundex and sounds like
# soundex maintained by NARA (https://www.archives.gov/research/census/soundex)

select distinct soundex(first_name) as sndx, first_name
from actor
order by (sndx)

# sounds like
# equivalent to soundex(@a) == soundex(@b)

select distinct soundex(first_name) as sndx, first_name
from actor
where first_name sounds like "grace"