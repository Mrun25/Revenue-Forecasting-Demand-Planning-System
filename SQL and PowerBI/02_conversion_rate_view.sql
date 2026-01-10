use olist_db;
-- Which lead sources convert better?

CREATE OR REPLACE VIEW vw_conversion_rate AS
SELECT
    origin,
    COUNT(*) AS total_leads,
    SUM(is_converted) AS converted_leads,
    ROUND(SUM(is_converted) / COUNT(*) * 100, 2) AS conversion_rate_pct
FROM funnel_base
GROUP BY origin;