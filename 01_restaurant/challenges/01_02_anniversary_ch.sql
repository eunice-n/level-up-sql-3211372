-- Create a table in the database to store customer
-- responses to our anniversary invitation.
CREATE TABLE AnniversaryAttendees (
CustomerID INTEGER,
PartySize INTEGER
);
-- Associate a customer's ID number with the number of people
-- they plan to bring in their party.
SELECT * FROM AnniversaryAttendees;
-- Hint: SQLite offers the INTEGER and REAL datatypes