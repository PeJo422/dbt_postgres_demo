With raw_jokes as (
Select Distinct
category
from {{ source('joke_raw', 'daily_jokes') }}
)


Select
row_number() OVER (ORDER BY category asc) as id
,category

From raw_jokes