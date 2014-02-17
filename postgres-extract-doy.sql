select distinct extract(DOY from TIMESTAMP WITH TIME ZONE 'epoch' + click_timestamp * INTERVAL '1 second') 
from click_tracker 
where click_linkid = '123456489';


// similar

// this will unique days visited afterward 14, 15, 16 etc 
SELECT DISTINCT EXTRACT( DAY from TIMESTAMP WITH TIME ZONE 'epoch' + click_timestamp * INTERVAL '1 second') as jday
FROM click_tracker
WHERE click_campaign = '123456489'
GROUP BY jday

// this will grab all hours 7,8,9,10,11,12, etc
SELECT extract(HOUR from TIMESTAMP WITH TIME ZONE 'epoch' + click_timestamp * INTERVAL '1 second') as hour
FROM click_tracker
WHERE click_campaign = '123456489'
AND extract(DAY from TIMESTAMP WITH TIME ZONE 'epoch' + click_timestamp * INTERVAL '1 second') = 15
group by hour
order by hour


// this will grab hours for this day
SELECT click_linkid, extract(HOUR from TIMESTAMP WITH TIME ZONE 'epoch' + click_timestamp * INTERVAL '1 second') as hour
FROM click_tracker
WHERE click_campaign = '123456489'
AND extract(DAY from TIMESTAMP WITH TIME ZONE 'epoch' + click_timestamp * INTERVAL '1 second') = 15
GROUP BY click_timestamp, click_linkid
order by click_timestamp




/*
FUNCTION
extract()
DOY = The day of the year (1 - 365/366)

DESCRIPTION
Date/Time functions
*/
