With raw_jokes as (
Select Distinct
category
from public.daily_jokes
)


Select
row_number() OVER (ORDER BY category asc) id
,category

From raw_jokes