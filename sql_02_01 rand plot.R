# SQL has RAND(). What distribution does it return?
# Normal distribution - aka bell curve
# Uniform distribution - aka flat probability

# install.packages("DBI")
library(DBI)

# Connect to the MySQL database: con
con <- dbConnect(RMySQL::MySQL(), 
                 dbname = "sakila", 
                 host = "localhost", 
                 port = 3306,
                 user = readline("Database user: "),
                 password = readline("Database password: ")
                 )
 
randomNumbers <- dbGetQuery(con,'
  select amount, rand() as rndNums
  from payment
')

hist(randomNumbers$rndNums)
