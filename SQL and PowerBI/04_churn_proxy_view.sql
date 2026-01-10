use olist_db;
-- A lead is churned if never converted.

CREATE OR REPLACE VIEW vw_churn_proxy AS
SELECT
    CASE
        WHEN is_converted = 0 THEN 'Churned'
        ELSE 'Converted'
    END AS customer_status,
    COUNT(*) AS customer_count
FROM funnel_base
GROUP BY customer_status;
