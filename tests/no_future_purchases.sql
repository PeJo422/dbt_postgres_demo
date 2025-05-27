select count(*) as future_purchase_count
from {{ ref('stg_transactions') }}
where purchase_date > current_date
having count(*) > 5200