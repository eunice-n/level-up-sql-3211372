-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT * FROM Reservations
WHERE Date LIKE "%-06-14%" AND
CustomerID == (SELECT CustomerID 
                      FROM Customers
                      WHERE FirstName LIKE "Ste%s%" OR
                      LastName LIKE "Ste%s%") AND
PartySize == 4;

SELECT Customers.FirstName, Customers.LastName, 
Reservations.Date, Reservations.PartySize, Reservations.ReservationID
FROM Reservations
JOIN Customers ON Customers.CustomerID = Reservations.CustomerID
WHERE Customers.LastName LIKE "St%" AND
Reservations.PartySize = 4 
ORDER BY Reservations.Date DESC 