-- Retrieve orders for the calendar year of 1996
SELECT Customers.CustomerID, Orders.OrderID, Orders.OrderDate
FROM Customers INNER JOIN
	Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderDate >='1996-01-01 00:00:00' AND Orders.OrderDate <='1996-12-31 00:00:00'

UNION

-- Retrieve orders for the calendar year of 1997
SELECT Customers.CustomerID, Orders.OrderID, Orders.OrderDate
FROM Customers INNER JOIN
	Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderDate >='1997-01-01 00:00:00' AND Orders.OrderDate <='1997-12-31 00:00:00'