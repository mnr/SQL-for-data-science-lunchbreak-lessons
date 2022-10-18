SELECT 
    IF('brillig' IN ('Twas' , 'brillig', 'and the', 'slithey', 'toves'),
        'Itz a match!',
        'Not a match');

# ...or...
SELECT 
    first_name, last_name
FROM
    actor
WHERE
    last_name IN ('Akroyd' , 'Bacall', 'Chaplin');
    
# ...or...
SELECT 
    first_name, last_name
FROM
    actor
WHERE
    last_name NOT IN ('Akroyd' , 'Bacall', 'Chaplin');
