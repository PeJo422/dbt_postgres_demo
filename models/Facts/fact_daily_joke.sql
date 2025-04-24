With Jokes as (

    Select 
    joke_id
    ,category
    ,joke
    ,religious
    ,political
    ,racist
    ,sexist
    ,explicit
    ,Cast(date as date)

    FROM public.daily_jokes
    Where racist = false and sexist =false and explicit = false
),

Category as (

Select Distinct
category
from public.daily_jokes
),

cat_id as (
Select
row_number() OVER (ORDER BY category asc) as id
,category

From Category
)

Select 

     joke_id as id
    ,c.id as category_id
    ,joke
    ,religious
    ,political
    ,racist
    ,sexist
    ,explicit
    ,"date"
 from Jokes J
Inner join cat_id C on c.category = j.category