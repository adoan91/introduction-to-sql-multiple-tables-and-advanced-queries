SELECT SUM([Order Details].[UnitPrice] * [Order Details].[Quantity]) AS 'Subtotal'
FROM [Order Details]
WHERE [Order Details].ProductID IN
	(SELECT Products.ProductID
	FROM Products
	INNER JOIN Categories
	ON Categories.CategoryID = Products.CategoryID
	WHERE Categories.CategoryName = 'Beverages')