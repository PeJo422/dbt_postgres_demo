
WITH Transactions as (

select  
 user_id
,card_number
,amount
,currency
,merchant
,purchase_date

FROM {{ source('crm_raw', 'transactions') }} 
)

SELECT * From Transactions 