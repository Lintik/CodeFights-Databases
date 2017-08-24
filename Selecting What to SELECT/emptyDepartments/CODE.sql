CREATE PROCEDURE emptyDepartments()
BEGIN
    SELECT departments.`dep_name`
    FROM departments
    WHERE departments.`id` NOT IN 
    (SELECT employees.`department` FROM employees); 
END
