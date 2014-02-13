select distinct click_hour::numeric, click_year, count(*) as count  
from click_tracker
where click_linkid = '12345678' and click_day_of_year = '$dayOfYear'
group by click_hour, click_year
order by click_year, click_hour::numeric;
