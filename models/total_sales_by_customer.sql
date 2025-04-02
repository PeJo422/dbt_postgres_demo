SELECT 
usr.name
,sum(t.amount) as Amount

FROM {{ref("transactions")}} t
INNER JOIN {{ref("users")}} usr on t.user_id = usr.id
GROUP BY usr.name

