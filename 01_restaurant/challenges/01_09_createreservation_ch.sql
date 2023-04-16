-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

SELECT *
FROM Customers
WHERE Email == 'smac@kinetecoinc.com';

DELETE FROM Customers
WHERE CustomerID == 103 AND CustomerID == 104;

INSERT INTO Customers
(FirstName, LastName, Email, Phone) VALUES
('Sam', 'McAdams', 'smac@kinetecoinc.com', '(555) 555-1232');

INSERT INTO Reservations
(CustomerID, Date, PartySize) VALUES
((SELECT CustomerID 
FROM Customers 
WHERE Email == 'smac@kinetecoinc.com'),
'2022-08-12 18:00:00',
5);

SELECT Customers.FirstName, Customers.LastName, Reservations.Date, Reservations.PartySize
FROM Reservations
JOIN Customers ON Customers.CustomerID = Reservations.CustomerID
WHERE Custoners.Email == 'smac@kinetecoinc.com';