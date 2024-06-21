--INBUILT FUNCTIONS
--string functions
--String functionsare used to perform an operation on input string and return an output string

--types of string functions in sql

--ASCII(): This function is used to find the ASCII value of a character.
Syntax: SELECT ascii('t');

--CHAR_LENGTH():  This function is used to find the length of a word.
Syntax: SELECT char_length('Hello!');

--CONCAT(): This function is used to add two words or strings.
Syntax: SELECT 'home' FROM world;

--LCASE(): This function is used to convert the given string into lower case
Syntax: LCASE ("home");

--UCASE(): This function is used to convert the given string into upper case
Syntax: UCASE ("home");

--INSTR(): This function is used to find the occurrence of an alphabet
Syntax: INSTR('home', 'e');

--SUBSTR(): This function is used to find a sub string from the a string from the given position.
Syntax:SUBSTR('home', 1, 5);

--LPAD(): This function is used to make the given string of the given size by adding the given symbol.
Syntax: LPAD('home', 7, '0');

--RPAD(): This function is used to make the given string as long as the given size by adding the given symbol on the right.
Syntax: RPAD('home', 4, '0');

--TRIM(): This function is used to cut the given symbol from the string.
Syntax: TRIM(LEADING '0' FROM '000123');



--DATE AND TIME FUNCTIONS IN SQL
--In SQL, dates are complicated for newbies, since while working with a database, the format of the data in the table must be matched with the input data to insert. 
--In various scenarios instead of date, datetime (time is also involved with date) is used.

--CURDATE():Returns the current date. 
--Query:
SELECT CURDATE();

--CURTIME():Returns the current time. 
--query:
SELECT CURTIME();

--DATE():Extracts the date part of a date or date/time expression. 
--Query:
SELECT DATE(birth) 
AS BirthDate FROM time;

--DATEDIFF():Returns the number of days between two dates. 
--query
SELECT DATEDIFF('2017-01-13','2017-01-03') AS DateDiff;

--DATE_ADD():Adds a specified time interval to a date.
--query
SELECT Name, DATE_ADD(BirthTime, INTERVAL 
1 YEAR) AS BirthTimeModified FROM Test;

--DATE_SUB():Subtracts a specified time interval from a date.
--query
SELECT DATEDIFF('2017-01-13','2017-01-03') AS DateDiff; 

--LAST_DAY(date):Returns the last day of the month for a given date. Example: SELECT LAST_DAY(SYSDATE) FROM DUAL;
--query
SELECT LAST_DAY(12-34-7644) AS LAST_DAY_OF_MONTH;



--Numeric functions in sql
--Numeric Functions are used to perform operations on numbers and return numbers. Following are the numeric functions defined in SQL

--The AVG() function returns the average value of an expression.
SELECT * FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products);

--The COUNT() function returns the number of records returned by a select query.
SELECT COUNT(ProductID) AS NumberOfProducts FROM Products;

--The FLOOR() function returns the largest integer value that is smaller than or equal to a number.
SELECT FLOOR(25) AS FloorValue;

--The MAX() function returns the maximum value in a set of values
SELECT MAX(Price) AS LargestPrice FROM Products;

--The MIN() function returns the minimum value in a set of values
SELECT MIN(Price) AS SmallestPrice FROM Products;

--The POWER() function returns the value of a number raised to the power of another number.
SELECT POWER(8, 3);

--The ROUND() function rounds a number to a specified number of decimal places.
The ROUND() function rounds a number to a specified number of decimal places.

--The SQRT() function returns the square root of a number.
SELECT SQRT(64);
