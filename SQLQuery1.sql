-- Using IN, NOT IN in SQL
SELECT SUM([Order Details].UnitPrice * [Order Details].Quantity) AS Subtotal, Categories.CategoryName
FROM [Order Details]
	INNER JOIN
		Products ON [Order Details].ProductID = Products.ProductID
	INNER JOIN
		Categories ON Products.CategoryID = Categories.CategoryID
WHERE Categories.CategoryName IN ('Beverages', 'Condiments')
--WHERE Categories.CategoryName NOT IN ('Beverages', 'Condiments')
GROUP BY CategoryName