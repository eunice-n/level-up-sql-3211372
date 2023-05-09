-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.
SELECT *
FROM Books
WHERE Title = 'Dracula';

SELECT Books.BookID, Books.Title, Loans.BookID, Loans.ReturnedDate
FROM Books
JOIN Loans
ON Books.BookID = Loans.BookID
WHERE Books.Title = 'Dracula'
AND ReturnedDate ISNULL;
