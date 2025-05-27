WITH users AS (
  SELECT 
    usr.id,
    usr.name,
    usr.email,
    usr.age,
    usr.created_at
  FROM {{ ref('stg_users') }} usr
)

SELECT 
  u.*,
  CAST(COALESCE(MIN(t.purchase_date), '1999-01-01') AS DATE) AS "first_purchase"
FROM users u
LEFT JOIN 
{{ ref('stg_transactions') }} 

t ON u.id = t.user_id
GROUP BY u.id, u.name, u.email, u.age, u.created_at
