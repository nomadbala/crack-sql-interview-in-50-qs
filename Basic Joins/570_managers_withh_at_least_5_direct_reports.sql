SELECT E.name
FROM Employee as E
JOIN
(
    SELECT managerId, COUNT(managerID) as no_reports
    FROM Employee
    GROUP by managerId
    HAVING COUNT(managerId) >= 5
) as E2
ON E.id = E2.managerId
