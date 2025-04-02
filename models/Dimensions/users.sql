
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
, (select COALESCE(MIN(purchase_date)) from {{ref("transactions")}} ) as "First Buy"

 From users u

