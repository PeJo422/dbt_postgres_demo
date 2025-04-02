
WITH users as (
SELECT 
 usr.id
,usr.name
,usr.email
,usr.age
,usr.created_at

FROM public.users usr



)

SELECT 
*
, (select COALESCE(MIN(purchase_date)) from {{ref("fact_transactions")}} ) as "First Buy"

 From users u

