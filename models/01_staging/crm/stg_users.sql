WITH users AS (
  SELECT 
    id, 
    name, 
    email,
    age,  
  CAST(created_at AS DATE) AS created_at
  FROM {{ source('crm_raw', 'users') }}
)

SELECT * from users
