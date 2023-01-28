-- floor, ceiling, truncate, and round
select @oddNum := actor_id / 3,
    floor(@oddNum),
    round(@oddNum),
    round(10.49),
    round(10.5),
    ceiling(@oddNum), # aka CEIL()
    truncate(@oddNum,0),
    truncate(@oddNum,3)
from actor

-- negative numbers
select @oddNum := actor_id / -3,
    floor(@oddNum),
    round(@oddNum),
    ceiling(@oddNum), # aka CEIL()
    truncate(@oddNum,0),
    truncate(@oddNum,3)
from actor