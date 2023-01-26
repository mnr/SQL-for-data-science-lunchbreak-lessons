-- REVERSE()	Reverse the characters in a string
select @sensorData := actor_id,
    BIN(@sensorData),
    reverse(BIN(@sensorData)),
    reverse(first_name)
FROM actor