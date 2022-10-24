# COALESCE returns the first non-null value

SELECT 
    COALESCE("This", "That", "another"),
    COALESCE(NULL, "That", "another"),
    COALESCE(NULL, NULL, "another"),
    COALESCE("This", NULL, "another"),
    COALESCE(null, NULL, null);

# real life problem
# db has spurious NULL. Need to mark as "Unique"
select address,
    address2, 
    coalesce(address2, "Unique") as new_2nd
from
    address