select distinct trim(substring(building,1,char_length(building)-4)) as building 
from $qTable order by building; 

/*
FUNCTION
char_length(string)

char_length('jose')	-- result 4

DESCRIPTION
Number of characters in string
*/
