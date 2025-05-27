
WITH Transactions as (

select  
 user_id 
,card_number 
,amount 
,currency 
,merchant
,COALESCE(purchase_date, DATE '1999-01-01') as purchase_date

FROM {{ source("crm_raw", "transactions") }} 
)

SELECT * From Transactions 