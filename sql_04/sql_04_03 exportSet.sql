-- EXPORT_SET()	
-- Return a string such that 
-- for every bit set in the value bits, 
--     you get an on string 
-- and for every unset bit, 
--     you get an off string
-- (reads right to left)
select @sensorData := actor_id,
    BIN(@sensorData),
    EXPORT_SET(@sensorData, "On", "Off",":",6)
FROM actor

-- MAKE_SET()	
-- Return a set of comma-separated strings 
-- that have the corresponding bit in bits set
select @sensorData := actor_id,
    BIN(@sensorData),
    MAKE_SET(@sensorData, "twas", "bril","and","the","slithey")
FROM actor

-- FIND_IN_SET()	
-- Index (position) of first argument within second argument
select @sensorData := actor_id,
    FIND_IN_SET(@sensorData, "58,145,47")
FROM actor