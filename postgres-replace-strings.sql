select * 
from volunteer_registrations 
where REPLACE(REPLACE(volunteer_site, '''',''), '\\\','') = '$siteName';
