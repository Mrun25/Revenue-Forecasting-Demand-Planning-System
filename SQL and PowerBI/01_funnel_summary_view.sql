create database olist_db;
use olist_db;

-- How many leads converted vs dropped?

CREATE OR REPLACE VIEW vw_funnel_summary AS
SELECT
    COUNT(*) AS total_leads,
    SUM(is_converted) AS converted_leads,
    COUNT(*) - SUM(is_converted) AS dropped_leads,
    ROUND(SUM(is_converted) / COUNT(*) * 100, 2) AS conversion_rate_pct
FROM funnel_base;





