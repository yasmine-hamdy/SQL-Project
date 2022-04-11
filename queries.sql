/* Query 1 - How many customers does each employee support?*/
SELECT e.EmployeeId, e.LastName, e.FirstName, e.Title, COUNT(c.CustomerId) Number_of_Customers
FROM Employee e
JOIN Customer c
ON e.EmployeeId = c.SupportRepId
GROUP BY 1, 2, 3, 4
ORDER BY 5 DESC;