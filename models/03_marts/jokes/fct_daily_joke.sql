with
    jokes as (

        select
            id, 
            category_id, 
            joke, 
            religious, 
            political,
            racist,
            sexist,
            explicit, 
            date
        from {{ref('stg_daily_joke')}}
    )

    Select * From jokes