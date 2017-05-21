-- Using a correlated subquery to find employees who have made sales in their own city
SELECT *
FROM Orders
WHERE EmployeeID IN
	(SELECT EmployeeID FROM Employees
	WHERE Orders.ShipCity = Employees.City)