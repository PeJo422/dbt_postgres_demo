WITH users AS (
  SELECT 
    usr.id,
    usr.name,
    usr.email,
    usr.age,
    usr.created_at
  FROM public.users usr
)

SELECT 
  u.*,
  COALESCE(MIN(t.purchase_date), '1999-01-01') AS "First Buy"
FROM users u
LEFT JOIN public.transactions t ON u.id = t.user_id
GROUP BY u.id, u.name, u.email, u.age, u.created_at
ORDER BY "First Buy" DESC
