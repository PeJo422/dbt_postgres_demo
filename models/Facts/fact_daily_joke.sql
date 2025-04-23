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
)

Select * from Jokes