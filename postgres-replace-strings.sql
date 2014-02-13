select * 
from volunteer_registrations 
where REPLACE(REPLACE(volunteer_site, '''',''), '\\\','') = '$siteName';

/*
FUNCTION
replace(string text, from text, to text)

DESCRIPTION
Replace all occurrences in string of substring from with substring to

*/
