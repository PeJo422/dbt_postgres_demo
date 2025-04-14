SELECT 
  usr.name AS "Customer Name",
  COALESCE(DATE_PART('year', t.purchase_date), 1999) AS "Year",
  SUM(t.amount) AS "Total Amount",
  COUNT(*) AS "Transaction Count",
  MAX(t.amount) AS "Max Amount",
  MIN(t.amount) AS "Min Amount",
  AVG(t.amount) AS "Avg Amount"
FROM {{ref("fact_transactions")}} t
INNER JOIN {{ref("dim_users")}} usr ON t.user_id = usr.id
GROUP BY ROLLUP (usr.name, DATE_PART('year', t.purchase_date))
ORDER BY "Customer Name" ASC, "Year" DESC
