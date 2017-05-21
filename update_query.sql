-- Using a subquery to update product prices based on the supplier
UPDATE Products
SET UnitPrice = (UnitPrice * 1.1)
WHERE ProductID IN
	(SELECT ProductID
	FROM Products INNER JOIN Suppliers
		ON Products.SupplierID = Suppliers.SupplierID
	WHERE Suppliers.CompanyName = 'Exotic Liquids')
	
-- Verify records
SELECT * FROM Suppliers

SELECT * FROM Products
ORDER BY SupplierID