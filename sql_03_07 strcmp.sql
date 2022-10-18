# strcmp
        
SELECT 
    CASE STRCMP('brillig', 'arillig')
        WHEN - 1 THEN 'first arg'
        WHEN 0 THEN 'the same'
        WHEN 1 THEN 'last arg'
        ELSE 'why are we here?'
    END;

# comparison is by sort order
# case insensitive