# strcmp

# STILL WORKING ON THIS...
        
SELECT 
    CASE STRCMP('brillig', 'arillig')
        WHEN - 1 THEN ' first smaller'
        WHEN 0 THEN 'the same'
        WHEN 1 THEN 'larger'
        ELSE 'why are we here?'
    END;

# comparison is by sort order
# case insensitive