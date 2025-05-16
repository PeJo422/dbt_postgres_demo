
WITH Dim_Transactions as (

select  
 user_id
,card_number
,amount
,currency
,merchant
,purchase_date

FROM public.transactions
)

SELECT * From Dim_Transactions 