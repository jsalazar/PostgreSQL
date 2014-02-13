select DISTINCT initcap(trim(text($key))) as tempkey, count (*) as count 
from bitcoin_accounts 
group by initcap(trim(text($key))) 
order by initcap(trim(text($key)));
