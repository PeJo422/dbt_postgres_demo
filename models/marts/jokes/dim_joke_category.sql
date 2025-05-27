With raw_jokes as (
Select Distinct
category
from {{ ref("stg_daily_joke") }}
)


Select
row_number() OVER (ORDER BY category asc) as id
,category

From raw_jokes