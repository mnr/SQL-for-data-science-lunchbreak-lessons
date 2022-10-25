# trim - leading, both, trailing


select concat(">",trim(" hello "),"<"),
    concat(">",trim(both from " hello "),"<")


# ltrim
select concat(">",ltrim(" hello "),"<"),
    concat(">",trim(leading from " hello "),"<")

# rtrim
select concat(">",rtrim(" hello "),"<"),
    concat(">",trim(trailing from " hello "),"<")
