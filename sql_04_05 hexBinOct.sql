-- HEX()	Hexadecimal representation of decimal or string value
-- BIN()	Return a string containing binary representation of a number
-- OCT()	Return a string containing octal representation of a number

select actor_id,
    HEX(actor_id),
    BIN(actor_id),
    OCT(actor_id)
from actor