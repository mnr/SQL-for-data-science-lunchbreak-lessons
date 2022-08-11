# case
# there is also a case statement for stored procedures
SELECT last_update,
    CASE actor_id
        WHEN 3 THEN first_name
        WHEN 5 THEN last_name
        ELSE "neither"
    END
FROM
    actor;
    

    
SELECT last_update,
    CASE
        WHEN actor_id = 3 THEN first_name
        WHEN actor_id = 5 THEN last_name
        WHEN first_name = "Bob" then "Hello Bob"
        ELSE 'neither'
    END
FROM
    actor;
    