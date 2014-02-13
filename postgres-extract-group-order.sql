SELECT DISTINCT click_linkid, count (*) as count, click_campaign, click_linkurl 
        FROM click_tracker
        where extract(YEAR from TIMESTAMP WITH TIME ZONE 'epoch' + click_timestamp * INTERVAL '1 second') = 2009        
        GROUP BY click_linkid, click_campaign, click_linkurl 
        ORDER BY click_campaign, count DESC;
