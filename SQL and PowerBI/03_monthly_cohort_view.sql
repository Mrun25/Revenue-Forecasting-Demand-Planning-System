use olist_db;
-- Are newer cohorts converting better?

CREATE OR REPLACE VIEW vw_monthly_cohort AS
SELECT
    lead_month,
    COUNT(*) AS total_leads,
    SUM(is_converted) AS converted_leads,
    ROUND(SUM(is_converted) / COUNT(*) * 100, 2) AS conversion_rate_pct
FROM funnel_base
GROUP BY lead_month
ORDER BY lead_month;

select * from vw_churn_proxy;