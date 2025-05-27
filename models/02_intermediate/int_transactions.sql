
WITH Transactions as (

select  
 user_id 
,card_number 
,amount 
,currency 
,merchant
,purchase_date 

FROM {{ ref('stg_transactions') }} 
)

SELECT * From Transactions 