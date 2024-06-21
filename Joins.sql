--Joins
--SQL JOIN clause is used to query and access data from multiple tables by establishing logical relationships between them.

--EXAMPLE
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

--TYPES OF JOINS
-- INNER JOIN
--The INNER JOIN keyword selects all rows from both the tables as long as the condition is satisfied.

--syntax
SELECT table1.column1,table1.column2,table2.column1,....
FROM table1 
INNER JOIN table2
ON  table1.matching_column = table2.matching_column;

--LEFT JOIN
--LEFT JOIN returns all the rows of the table on the left side of the join and matches rows for the table on the right side of the join.

--syntax
SELECT table1.column1,table1.column2,table2.column1,....
FROM table1 
LEFT JOIN table2
ON table1.matching_column = table2.matching_column;

--RIGHT JOIN
--RIGHT JOIN returns all the rows of the table on the right side of the join and matching rows for the table on the left side of the join.

--syntax
SELECT table1.column1,table1.column2,table2.column1,....
FROM table1 
RIGHT JOIN table2
ON table1.matching_column = table2.matching_column;

--FULL JOIN
--FULL JOIN creates the result-set by combining results of both LEFT JOIN and RIGHT JOIN

--syntax
SELECT table1.column1,table1.column2,table2.column1,....
FROM table1 
FULL JOIN table2
ON table1.matching_column = table2.matching_column; 

--NATURAL JOIN 
--Natural join can join tables based on the common columns in the tables being joined.
-- A natural join returns all rows by matching values in common columns having same name and data type of columns and that column should be present in both tables.

--Example
-- Creating sample tables

CREATE database xfg;

use xfg;

CREATE TABLE tableA (
    id INT,
    name VARCHAR(50)
);

CREATE TABLE tableB (
    id INT,
    value VARCHAR(50)
);

-- Inserting sample data into tableA
INSERT INTO tableA (id, name) VALUES
(1, 'Ak'),
(2, 'Jeet'),
(3, 'Abhi');

-- Inserting sample data into tableB
INSERT INTO tableB (id, value) VALUES
(2, 'Value2'),
(3, 'Value3'),
(4, 'Value4');

-- INNER JOIN: 
SELECT a.id, a.name, b.value
FROM tableA a
INNER JOIN tableB b ON a.id = b.id;

-- LEFT JOIN: 
SELECT a.id, a.name, b.value
FROM tableA a
LEFT JOIN tableB b ON a.id = b.id;

-- RIGHT JOIN:
SELECT a.id, a.name, b.value
FROM tableA a
RIGHT JOIN tableB b ON a.id = b.id;

--FULL JOIN:
SELECT a.id, a.name, b.value
FROM tableA a
FULL OUTER JOIN tableB b ON a.id = b.id;

