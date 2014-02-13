select distinct extract(DOY from TIMESTAMP WITH TIME ZONE 'epoch' + click_timestamp * INTERVAL '1 second') 
from click_tracker 
where click_linkid = '123456489';

/*
FUNCTION
extract()
DOY = The day of the year (1 - 365/366)

DESCRIPTION
Date/Time functions
*/
