# length, char_length, character_length, octet_length, bit_length

-- length
set @myWord := "hello";
select length(@myWord),
    char_length(@myWord)

-- length vs char_length
-- notice 2-byte characters
set @myWord := "こんにちは";
select length(@myWord),
    char_length(@myWord)

-- length & octet_length are synonyms
set @myWord := "こんにちは";
select length(@myWord),
    octet_length(@myWord);

-- char_length & character_length are synonyms
set @myWord := "こんにちは";
select char_length(@myWord),
    character_length(@myWord);

-- bits instead of char
set @myWord := "hello";
select length(@myWord),
    bit_length(@myWord);
