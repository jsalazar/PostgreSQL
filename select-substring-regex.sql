select substring(click_fancydate, '[a-zA-Z0-9:. ]{1,16}') 
from click_tracker 
where click_linkid = '123456489';


// similar

select distinct substr(click_fancydate, 1, 16) as uniquedayclick 
from click_tracker 
where click_linkid = '123456489';

/*

FUNCTION
SELECT SUBSTRING('XY1234Z', 'Y*([0-9]{1,3})');
Result: 123

DESCRIPTION
regular expression matching rules

*/
