-- FORMAT()	Return a number formatted to 
--  specified number of decimal places
select @bignum := actor_id/3*1000,
    FORMAT(@bignum, 2)
from actor

-- allows for locale
-- de_DE is Germany. Uses comma instead of decimal
-- list is at "MySQL Server Locale Support"
select @bignum := actor_id/3*1000,
    FORMAT(@bignum, 2, "de_DE"),
    FORMAT(@bignum, 2, "zh_CN")    
from actor