SELECT 
    COALESCE("This", "That", "another"),
    COALESCE(NULL, "That", "another"),
    COALESCE(NULL, NULL, "another"),
    COALESCE("This", NULL, "another");

