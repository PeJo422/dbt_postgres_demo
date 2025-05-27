WITH users AS (
  SELECT 
    id, as 'user_id'
    name, as 'full name'
    email,
    age, as 
    created_at
  FROM {{ source('crm_raw', 'users') }}
)

SELECT * from users
