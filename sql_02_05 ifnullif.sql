# ifnull() and nullif()

#ifnull(expr1, expr2)
select ifnull(435,450); # 435
select ifnull(NULL,450); # 450

# practical example
select last_name, picture from staff; # returns null picture
select last_name, ifnull(picture,0x00000000) from staff; 

# nullif(expr1, expr2)
select nullif(335,335); # NULL
select nullif(335,350); # 335

# practical example
# div by zero error (sometimes - depends on ERROR_FOR_DIVISION_BY_ZERO
set @somenumber := 0;
select 1/@somenumber; 
SHOW WARNINGS;
select 1/nullif(@somenumber,0);
SHOW WARNINGS;
