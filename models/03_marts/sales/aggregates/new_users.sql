WITH new_customers AS (
  SELECT 
    TO_CHAR("first_purchase", 'YYYY-MM') AS year_month,0,
    COUNT(*) AS new_customers
  FROM {{ ref("dim_users") }}
  WHERE "first_purchase" IS NOT NULL
  GROUP BY TO_CHAR("first_purchase", 'YYYY-MM')
),

returning_customers AS (
  SELECT 
    TO_CHAR(t.purchase_date, 'YYYY-MM') AS year_month,
    COUNT(DISTINCT t.user_id) AS returning_customers
  FROM {{ ref('fct_transactions') }} t
  JOIN {{ ref('dim_users') }} u ON t.user_id = u.id
  WHERE t.purchase_date > u."first_purchase"
  GROUP BY TO_CHAR(t.purchase_date, 'YYYY-MM')
)

SELECT 
  COALESCE(nc.year_month, rc.year_month) AS year_month,
  nc.new_customers,
  rc.returning_customers
FROM new_customers nc
FULL OUTER JOIN returning_customers rc
  ON nc.year_month = rc.year_month
ORDER BY year_month