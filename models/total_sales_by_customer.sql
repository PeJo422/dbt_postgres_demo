SELECT 
usr.name as "Customer Name"
,COALESCE(date_part('year',t.purchase_date),1999) as "Year"
,sum(t.amount) as "Amount"
,Count(*) as "Transaction count"
FROM {{ref("transactions")}} t
INNER JOIN {{ref("users")}} usr on t.user_id = usr.id
GROUP BY usr.name ,date_part('year',t.purchase_date)
order by "Customer Name" Asc, "Year"  desc