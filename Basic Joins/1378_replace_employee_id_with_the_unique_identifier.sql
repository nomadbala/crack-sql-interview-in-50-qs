SELECT EN.unique_id, E.Name
FROM Employees AS E
LEFT JOIN EmployeeUNI AS EN
ON E.id = EN.id
