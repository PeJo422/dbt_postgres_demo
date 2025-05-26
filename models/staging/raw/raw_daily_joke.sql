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

    FROM {{ source('joke_raw', 'daily_jokes') }}

)

Select * from Jokes