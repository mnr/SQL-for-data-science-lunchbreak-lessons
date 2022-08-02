# if(expr1, expr2, expr3)
#https://dev.mysql.com/doc/refman/8.0/en/flow-control-functions.html

# if() function
# vs if statement for stored programs

# if expr1 == TRUE then expr2 else expr3
# ternary operator 
SELECT 
    IF(actor_id > 25, first_name, last_name),
    IF(actor_id > 25,
        'First name',
        'Last name')
FROM
    actor