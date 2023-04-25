-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

-- Find Customer in Customer Record
SELECT *
FROM Customers
WHERE FirstName == 'Loretta' AND LastName == 'Hundey';

-- Create OrderID for this order
INSERT INTO Orders (CustomerID, OrderDate)
VALUES ((SELECT Customers.CustomerID
          FROM Customers 
          WHERE FirstName == 'Loretta' AND 
                LastName == 'Hundey'), 
        '2022-09-20 14:00:00');

-- View added Order
SELECT * FROM Orders 
WHERE CustomerID == 70
ORDER BY OrderID DESC;

-- View Ordered Dishes in one table
SELECT DishID, Name, Price
FROM Dishes WHERE
Name == 'Mini Cheeseburgers' OR
Name == 'House Salad' OR
Name == 'Tropical Blue Smoothie';


-- Add Dishes to OrderDishes
INSERT INTO OrdersDishes (OrderID, DishID)
VALUES (1001, 7);

INSERT INTO OrdersDishes (OrderID, DishID)
VALUES (1001, 4);

INSERT INTO OrdersDishes (OrderID, DishID)
VALUES (1001, 20);

SELECT * FROM OrdersDishes WHERE OrderID == 1001;

-- Calculate Price
SELECT SUM(Dishes.Price)
FROM Dishes 
JOIN OrdersDishes ON Dishes.DishID = OrdersDishes.DishID
WHERE OrdersDishes.OrderID == 1001;


