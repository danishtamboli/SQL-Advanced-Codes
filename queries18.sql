SELECT user_id
FROM (
    SELECT user_id, login_date,
           login_date - ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY login_date) AS grp
    FROM logins
) t
GROUP BY user_id, grp
HAVING COUNT(*) >= 3;