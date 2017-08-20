BEGIN
  SELECT departments.`dep_name`, employees.`emp_name` 
  FROM departments, employees 
  GROUP BY departments.`dep_name`, employees.`emp_name`
  ORDER BY departments.`dep_name`, employees.`emp_name`;
END
