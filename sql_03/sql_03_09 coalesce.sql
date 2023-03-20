# COALESCE returns the first non-null value

SELECT 
    COALESCE("This", "That", "another"),
    COALESCE(NULL, NULL, "another"),
    COALESCE("This", NULL, "another"),
    COALESCE(null, NULL, null);

# address2 is sometimes NULL...or not
# Task: change NULL to " "
# and leave Box # alone
select address,
    address2, 
    coalesce(address2, " ") as new_2nd
from
    address

# what I did to film table
update address 
    set address2 = 
        if (rand() > .8,
        concat("Box ",round(rand()*100)),
        NULL);
