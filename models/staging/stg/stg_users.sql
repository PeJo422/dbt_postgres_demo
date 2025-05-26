WITH users AS (
  SELECT 
    id,
    name,
    email,
    age,
    created_at
  FROM {{ ref('raw_users') }} 
)

SELECT * from users
