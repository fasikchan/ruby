SELECT queues_requests_send.request_body, geo_regions_cities.name, campaigns.name
    FROM queues_requests_send
    JOIN geo_regions_cities ON queues_requests_send.region_id = geo_regions_cities.id
    JOIN campaigns ON queues_requests_send.campaign_id = campaigns.id
    WHERE queues_requests_send.webmaster_id
        IN (SELECT id FROM users WHERE email = 'kolyhan1@rambler.ru')
    AND queues_requests_send.created_at::date
        BETWEEN '2013-10-01' AND '2013-10-7';
