--Single or Multiple Row Subqueries:

In this the subquery returns a Single row value or Multiple rows of values from the Subquery given after the ‘WHERE’ clause of the outer query.

Single Row Example:
Select * from Products Where ProductID = (Select MAX(ProductID) from OrderDetails where OrderID =10250)

In the above example the subquery returns a single value only.

--Multiple Row Example:
Select * from Products Where ProductID IN (Select ProductID from OrderDetails where OrderID =10250)

In the above example with the IN operator the subquery can return multiple rows. 
There are other operators like NOT IN, ANY, ALL, EXISTS or NOT EXISTS also return multiple rows.

--Correlated Subqueries
A correlated subquery is a type of subquery that uses the values of the outer query. 
So the subquery is executed repeatedly once for each row value from the outer query.
Example:
Select * from Products Where ProductID IN (Select ProductID from OrderDetails where OrderID =10255 OR OrderID=10256) 
Order by ProductID

--Example
CREATE DATABASE LibraryDB;
USE LibraryDB;

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Country VARCHAR(100)
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(100),
    Genre VARCHAR(50),
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT,
    Borrower VARCHAR(100),
    LoanDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
INSERT INTO Authors (Name, Country) VALUES
('J.K. Rowling', 'United Kingdom'),
('George R.R. Martin', 'United States'),
('J.R.R. Tolkien', 'United Kingdom');

INSERT INTO Books (Title, Genre, AuthorID) VALUES
('Harry Potter and the Philosopher\'s Stone', 'Fantasy', 1),
('Harry Potter and the Chamber of Secrets', 'Fantasy', 1),
('A Game of Thrones', 'Fantasy', 2),
('A Clash of Kings', 'Fantasy', 2),
('The Hobbit', 'Fantasy', 3),
('The Lord of the Rings', 'Fantasy', 3);

INSERT INTO Loans (BookID, Borrower, LoanDate, ReturnDate) VALUES
(1, 'Alice', '2024-06-01', '2024-06-15'),
(2, 'Bob', '2024-06-05', '2024-06-20'),
(3, 'Charlie', '2024-06-10', '2024-06-25'),
(4, 'Alice', '2024-06-15', '2024-06-30'),
(5, 'Dave', '2024-06-20', '2024-07-05'),
(6, 'Eve', '2024-06-25', NULL);

-- Single-row query
SELECT * FROM Books WHERE BookID = 1;
-- Multi-row query
SELECT * FROM Books WHERE Genre = 'Fantasy';
-- Correlated subquery
SELECT DISTINCT a.Name
FROM Authors a
WHERE EXISTS (
    SELECT 1
    FROM Books b
    JOIN Loans l ON b.BookID = l.BookID
    WHERE b.AuthorID = a.AuthorID AND l.ReturnDate IS NULL
);

--INNER JOIN with subquery
SELECT b.Title, a.Name AS Author, l.Borrower
FROM Books b
INNER JOIN Authors a ON b.AuthorID = a.AuthorID
INNER JOIN (
    SELECT BookID, Borrower
    FROM Loans
    WHERE ReturnDate IS NULL
) l ON b.BookID = l.BookID;

--LEFT JOIN with an aggregate function
SELECT b.Title,
COUNT(l.LoanID) AS NumberOfLoans
FROM Books b
LEFT JOIN Loans l ON b.BookID = l.BookID
GROUP BY b.BookID, b.Title;

--RIGHT JOIN and date functions
SELECT b.Title AS BookTitle,l.Borrower,l.LoanDate,l.ReturnDate,DATEDIFF(CURDATE(), l.ReturnDate) AS DaysSinceReturn
FROM Books b
RIGHT JOIN Loans l ON b.BookID = l.BookID
WHERE l.ReturnDate IS NULL OR DATEDIFF(CURDATE(), l.ReturnDate) > 30;





