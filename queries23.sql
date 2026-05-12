DELETE FROM employees
WHERE id NOT IN (
    SELECT MAX(id)
    FROM employees
    GROUP BY email
);