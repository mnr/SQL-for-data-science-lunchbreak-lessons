
-- ELT()	Return string at index number. 
-- "ELT" is short for Element
SELECT @setThird := round(ascii(first_name)/15-3),
    first_name, 
    ELT(@setThird, "Low", "Middle", "High")
FROM actor

-- FIELD()	Index (position) of first argument 
--     in subsequent arguments
-- REPEAT()	Repeat a string the specified number of times

SELECT first_name, 
    @count := FIELD(first_name, "Ed", "Joe", "Cuba"),
    repeat("*", @count)
FROM actor