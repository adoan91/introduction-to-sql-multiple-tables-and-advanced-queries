CREATE TABLE Customers2
	(
	CustomerID int IDENTITY (1, 1) NOT NULL,
	Name VARCHAR(25) NOT NULL,
	)
	
CREATE TABLE Orders2
	(
	OrderID int IDENTITY (1, 1) NOT NULL,
	CustomerID int NOT NULL,
	OrderDate datetime NOT NULL
	)
	
INSERT INTO Customers2
VALUES ('John Smith')

-- Verify Records
SELECT * FROM Customers2

INSERT INTO Orders2
	SELECT CustomerID, GETDATE()
	FROM Customers2
	WHERE Name = 'John Smith'
	
-- Verify Records
SELECT * FROM Orders2