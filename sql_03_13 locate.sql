# locate
# position
# instr 

# locate
# find needle in haystack
select first_name, 
    locate('n',first_name)
from actor;

select first_name, 
    locate('n',first_name,2)
from actor;

# position/in is synonym for locate 
select first_name, 
    position('n' in first_name)
from actor;

# instr is locate with flipped arguments
# i.e. haystack/needle instead of needle/haystack
select first_name, 
    instr(first_name, 'n')
from actor;

# why instr vs locate?
# apparently no reason 