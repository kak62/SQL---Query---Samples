SELECT 
    department_code,
    AVG(hours_worked) AS avg_hours,
    SUM(projects_completed) AS total_projects
FROM employee_performance
GROUP BY department_code
ORDER BY total_projects DESC;
