/*
The USING(join_column_list) clause names 
a list of columns that must exist 
in both tables. 
If tables a and b both contain 
columns c1, c2, and c3, the following join 
compares corresponding columns from the two tables:

a LEFT JOIN b USING (c1, c2, c3)
https://dev.mysql.com/doc/refman/8.0/en/join.html

The NATURAL [LEFT] JOIN of two tables is defined 
to be semantically equivalent to an INNER JOIN 
or a LEFT JOIN with a USING clause that names 
all columns that exist in both tables.
*/