/*
MySQL does not offer support for 
FULL OUTER JOIN as a separate JOIN type. 
Use UNION to simulate
*/
SELECT * FROM tableA
LEFT JOIN tableB ON tableA.id = tableB.id
UNION
SELECT * FROM tableA
RIGHT JOIN tableB ON tableA.id = tableB.id
