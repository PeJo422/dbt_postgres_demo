WITH users AS (
  SELECT 
    id, 
    name, 
    email,
    age,  
  CAST(created_at AS DATE) AS created_date,
  TO_CHAR(created_at, 'HH24:MI') AS created_time
  FROM {{ source('crm_raw', 'users') }}
)

SELECT * from users
