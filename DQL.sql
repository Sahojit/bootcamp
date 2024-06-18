--DQL stands for data query langauage

--Select command is used to fetch or retrieve data from a database.
--With the SELECT clause of a  SELECT command statement we specify the colums that we want to be displayed int the query result

--SYNTAX
SELECT column1,column2 FROM table_name;

--The LIMIT clause in SQL allows users to control the amount of data retrieved and displayed in the result set.

--SYNTAX
SELECT column1, column2, …
FROM table_name
WHERE condition
ORDER BY column
LIMIT [offset,] row_count;

--The DISTINCT clause is used in conjunction with the select keyword.
--It is used only when unique values are fetched.

--SYNTAX
SELECT DISTINCT column1, column2 
FROM table_name;

--GROUPBY
--The GROUP BY statement in SQL is used to arrange identical data into groups with the help of some functions.
--It is used with the SELECT statement.

--SYNTAX:
SELECT column1, function_name(column2)
FROM table_name
WHERE condition
GROUP BY column1, column2
ORDER BY column1, column2;

--HAVING BY
--The HAVING clause was introduced in SQL to allow the filtering of query results based on aggregate functions and groupings, which cannot be achieved using the WHERE clause that is used to filter individual rows.
--Having is a very generally used clause in SQL. Similar to WHERE it helps to apply conditions, but HAVING works with groups. 

--SYNTAX:
SELECT col_1, function_name(col_2)
FROM tablename
WHERE condition
GROUP BY column1, column2
HAVING Condition
ORDER BY column1, column2;

--ORDER BY
--The ORDER BY statement in SQL is used to sort the fetched data in either ascending or descending according to one or more columns.
--It is very useful to present data in a structured manner.

--SYNTAX:
SELECT * FROM table_name ORDER BY column_name ASC|DESC

--EXAMPLE
CREATE database students;

use students;

CREATE TABLE student (
    student_id INTEGER PRIMARY KEY,
    number_ INTEGER,
    name VARCHAR(100),
    address VARCHAR(200)
);
INSERT INTO student (student_id, number_, name, address) VALUES
(1, 123, 'Avi', 'Dibrugarh'),
(2, 456, 'Adarsh', 'Tezpur'),
(3, 123, 'Jeet', 'Assam'),
(4, 789, 'Harsha', 'Andhra'),
(5, 567, 'Prat', 'UP'),
(6, 487, 'zeee', 'Jammu');
SELECT DISTINCT number_, COUNT(student_id) AS student_count --distinct will count the number of students in each group
FROM student 
GROUP BY number_                --GROUP BY clause will group the result by number.
HAVING COUNT(student_id) > 2    --HAVING BY will filter the group with more than 2 students
ORDER BY student_count DESC     --Orders the groups by the count of students in descending order.
LIMIT 3;                        --Limits the result set to the first 3 rows.

