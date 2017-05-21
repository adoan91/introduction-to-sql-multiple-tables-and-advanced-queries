SELECT Categories.CategoryName, Employees.LastName + ', ' + Employees.FirstName AS Employee. SUM([Order Details].UnitPrice * [Order Details].Quantity) AS Subtotal,
YEAR(Orders.OrderDate) AS YEAR
FROM Categories
	INNER JOIN Products
		ON Categories.CategoryID = Products.CategoryID
	INNER JOIN [Order Details]
		ON Products.ProductID = [Order Details].ProductID
	INNER JOIN Orders
		ON [Order Details].OrderID = Orders.OrderID
	INNER JOIN Employees
		ON Orders.EmployeeID = Employees.EmployeeID
WHERE YEAR(Orders.OrderDate) IN (1997, 1998)
GROUP BY Categories.CategoryName, Employees.LastName + ', ' + Employees.FirstName, YEAR(Orders.OrderDate)
HAVING (SUM([Order Details].UnitPrice * [Order Details].Quantity) >= 20000)
ORDER BY Year DESC