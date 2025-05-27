WITH users AS (
  SELECT 
    id,
    name,
    email,
    age,
    created_at,
    first_purchase
  FROM {{ ref('int_users') }}
)

SELECT *
FROM users
