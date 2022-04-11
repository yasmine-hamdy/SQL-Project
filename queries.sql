/* Query 1 - How many customers does each employee support?*/
SELECT e.EmployeeId, e.LastName, e.FirstName, e.Title, COUNT(c.CustomerId) Number_of_Customers
FROM Employee e
JOIN Customer c
ON e.EmployeeId = c.SupportRepId
GROUP BY 1, 2, 3, 4
ORDER BY 5 DESC;

/* Query 2 - Top 10 customers in terms of units bought*/
SELECT c.CustomerId, c.FirstName, c.LastName, SUM(il.Quantity) Total_Quantity
FROM InvoiceLine il
JOIN Invoice i
ON il.InvoiceId = i.InvoiceId
JOIN Customer c
ON i.CustomerId = c.CustomerId
GROUP BY 1, 2, 3
ORDER BY 4 DESC
LIMIT 10;