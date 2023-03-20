/*
INTERSECT: Combine only those rows which the results 
of two query blocks have in common, 
omitting any duplicates.

Each of these set operators supports an ALL modifier. When the ALL keyword follows a set operator, this causes duplicates to be included in the result. 

All three set operators also support a DISTINCT keyword, which suppresses duplicates in the result. Since this is the default behavior for set operators, it is usually not necessary to specify DISTINCT explicitly.

*/