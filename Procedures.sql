--SQL Stored Procedures
A stored procedure in SQL is a group of SQL queries that can be saved and reused multiple times.
It is very useful as it reduces the need for rewriting SQL queries. 
It enhances efficiency, reusability, and security in database management.
Users can also pass parameters to stored procedures so that the stored procedure can act on the passed parameter values.

--Syntax to Create a Stored Procedure 
CREATE PROCEDURE procedure_name
(parameter1 data_type, parameter2 data_type, …)
AS
BEGIN
   — SQL statements to be executed
END
--Syntax to Execute the Stored Procedure
EXEC procedure_name parameter1_value, parameter2_value, ..

--Example
CREATE DATABASE SampleDB;

USE SampleDB;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    ContactName VARCHAR(50),
    Country VARCHAR(50)
);

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Country)
VALUES (1, 'Shubham', 'Thakur', 'India'),
       (2, 'Aman ', 'Chopra', 'Australia'),
       (3, 'Naveen', 'Tulasi', 'Sri lanka'),
       (4, 'Aditya', 'Arpan', 'Austria'),
       (5, 'Nishant. Salchichas S.A.', 'Jain', 'Spain');

CREATE PROCEDURE GetCustomersByCountry
    @Country VARCHAR(50)
AS
BEGIN
    SELECT CustomerName, ContactName
    FROM Customers
    WHERE Country = @Country;
END;

EXEC GetCustomersByCountry @Country = 'Sri lanka';

Cursor in SQL Server
A cursor in SQL Server is a database object that allows us to retrieve each row at a time and manipulate its data. 
A cursor is nothing more than a pointer to a row. It's always used in conjunction with a SELECT statement. It is usually a collection of SQL logic that loops through a predetermined number of rows one by one.
A simple illustration of the cursor is when we have an extensive database of worker's records and want to calculate each worker's salary after deducting taxes and leaves.
There are five types of cursors:
1: Declare Cursor:
The first step is to declare the cursor using the below SQL statement:

Declare cursor_name CURSOR  
    FOR select_statement;

We can declare a cursor by specifying its name with the data type CURSOR after the DECLARE keyword. 
Then, we will write the SELECT statement that defines the output for the cursor.

2: Open Cursor
It's a second step in which we open the cursor to store data retrieved from the result set. We can do this by using the below SQL statement:

OPEN cursor_name;  

3: Fetch Cursor
It's a third step in which rows can be fetched one by one or in a block to do data manipulation like insert, update, and delete operations on the currently active row in the cursor. We can do this by using the below SQL statement:

FETCH NEXT FROM cursor INTO variable_list; 


4: Close Cursor
It's a fourth step in which the cursor should be closed after we finished work with a cursor. We can do this by using the below SQL statement:

CLOSE cursor_name;  

5: Deallocate Cursor
It is the fifth and final step in which we will erase the cursor definition and release all the system resources associated with the cursor. We can do this by using the below SQL statement:

DEALLOCATE cursor_name;  

