SELECT e.*
FROM employees e
JOIN (
    SELECT department_id, MAX(salary) AS max_salary
    FROM employees
    GROUP BY department_id
) m
ON e.department_id = m.department_id
AND e.salary = m.max_salary;

-- Explanation:
-- First, we get max salary per department.
-- Then we join back to fetch employee details.