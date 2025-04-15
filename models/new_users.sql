SELECT 
  TO_CHAR("First Buy", 'YYYY-MM') AS year_month,
  COUNT(*) AS new_customers
FROM {{ref("dim_users")}}
WHERE "First Buy" IS NOT NULL
GROUP BY TO_CHAR("First Buy", 'YYYY-MM')
ORDER BY year_month
