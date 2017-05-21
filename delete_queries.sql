DELETE FROM Products
WHERE ProductID IN
	(SELECT ProductID
	FROM Products INNER JOIN Suppliers
		ON Products.SupplierID = Suppliers.SupplierID
	WHERE Suppliers.CompanyName = 'Exotic Liquids')