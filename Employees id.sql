SELECT DISTINCT e.employee_id
FROM employees e
JOIN employees m1 ON e.manager_id = m1.employee_id
JOIN employees m2 ON m1.manager_id = m2.employee_id
JOIN employees m3 ON m2.manager_id = m3.employee_id
WHERE m3.manager_id = 1
  AND e.employee_id <> 1;