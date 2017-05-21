-- Using a correlated subquery with EXIST/NOT EXIST
SELECT CustomerID, CompanyName
FROM Customers
WHERE EXISTS
WHERE NOT EXISTS
	(SELECT * FROM Orders
	WHERE Customers.CustomerID = Orders.CustomerID
	AND ShipCountry = 'UK')--'USA')