SELECT
    employee_id,
    CASE
        WHEN employee_id % 2 = 1
             AND name NOT LIKE 'M%' THEN salary
        WHEN employee_id % 2 = 1
             AND name LIKE 'M%' THEN 0
        WHEN employee_id % 2 = 0 THEN 0
    END AS bonus
FROM employees
ORDER BY employee_id;