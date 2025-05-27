select
    usr.name as "Customer Name",
    coalesce(date_part('year', t.purchase_date), 1999) as "Year",
    sum(t.amount) as "Total Amount",
    count(*) as "Transaction Count",
    max(t.amount) as "Max Amount",
    min(t.amount) as "Min Amount",
    avg(t.amount) as "Avg Amount"
from {{ ref("fct_transactions") }} t
inner join {{ ref("dim_users") }} usr on t.user_id = usr.id
group by rollup (usr.name, date_part('year', t.purchase_date))
order by "Customer Name" asc, "Year" desc
