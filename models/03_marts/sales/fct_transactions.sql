
WITH Transactions as (

select  
 user_id
,card_number
,amount
,CAST(currency as char(3))
,merchant
,CAST(purchase_date as date)

FROM {{ref('stg_transactions') }} 
)

SELECT * From Transactions 