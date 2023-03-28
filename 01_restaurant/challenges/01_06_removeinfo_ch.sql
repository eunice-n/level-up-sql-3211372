-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.
SELECT * FROM Reservations
WHERE CustomerID == (SELECT CustomerID FROM Customers
                      WHERE FirstName == "Norby") AND
                      Date > "2022-07-24";


-- Today is July 24, 2022.
DELETE FROM Reservations
WHERE CustomerID == (SELECT CustomerID FROM Customers
                      WHERE FirstName == "Norby") AND
                      Date > "2022-07-24";

-- Solution used JOIN to solve the challenge:
SELECT * FROM Reservations
JOIN Customers ON Customers.CustomerID = Reservations.CustomerID
WHERE Customers.FirstName == "Norby" AND
Reservations.Date > "2022-01-01";
