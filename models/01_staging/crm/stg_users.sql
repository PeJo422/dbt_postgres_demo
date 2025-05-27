WITH users AS (
  SELECT 
    id, 
    name, 
    email,
    age,
    created_at
  FROM {{ source('crm_raw', 'users') }}
)

SELECT * from users
