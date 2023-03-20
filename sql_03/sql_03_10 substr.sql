# substr
# substring

# SUBSTR() is a synonym for SUBSTRING()
select substr("Jabberwocky" from 3)
# or...
select substr("Jabberwocky", 3)


select substr("Jabberwocky" from 3 for 6)
# or...
select substr("Jabberwocky", 3, 6)

# negative starts from end
select substr("Jabberwocky" from -3)
select substr("Jabberwocky" from -8 for 6)

# if len < 1 == empty string
select substr("Jabberwocky" from -8 for -1)

