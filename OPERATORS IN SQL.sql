--OPERATORS IN SQL
--Operators in SQL are symbols that help us to perform specific mathematical and logical computations on operands.
--There are 4 types operator
--Arithmetic operator:
+	:The addition is used to perform an addition operation on the data values.
SELECT 4+5;

–	:This operator is used for the subtraction of the data values.
SELECT 4-5;

/	:This operator works with the ‘ALL’ keyword and it calculates division operations.
SELECT 10/5;

*	:This operator is used for multiplying data values.
SELECT 4*5;
%	:Modulus is used to get the remainder when data is divided by another.
SELECT 4%5;

--Comparison operator:
=   :The Equal Operator in SQL shows only data that matches the specified value in the query.
SELECT * FROM Employee_details WHERE Emp_Salary = 30000;  

!=  :The Equal Not Operator in SQL shows only those data that do not match the query.
SELECT * FROM Employee_details WHERE Emp_Salary != 30000; 

>   :The Greater Than Operator in SQL shows only those data which are greater than the value of the right-hand operand.
SELECT * FROM Employee_details WHERE Emp_Id > 1;  

>=  :The Greater Than Equals to Operator in SQL shows those data from the table which are greater than and equal to the value of the right-hand operand.
SELECT * FROM Employee_details WHERE Emp_Id >= 1;

<   :The Less Than Operator in SQL shows only those data from the database tables which are less than the value of the right-side operand.
SELECT * FROM Employee_details WHERE Emp_Id < 1;  

<=  :The Less Than Equals to Operator in SQL shows those data from the table which are lesser and equal to the value of the right-side operand.
SELECT * FROM Employee_details WHERE Emp_Id <= 1;  

--Logical operator:
The AND operator in SQL would show the record from the database table if all the conditions separated by the AND operator evaluated to True.
SELECT column1, ...., columnN FROM table_Name WHERE condition1 AND condition2 AND condition3 AND ....... AND conditionN;

The OR operator in SQL shows the record from the table if any of the conditions separated by the OR operator evaluates to True.
SELECT column1, ...., columnN FROM table_Name WHERE condition1 OR condition2 OR condition3 OR ....... OR conditionN;

The BETWEEN operator in SQL shows the record within the range mentioned in the SQL query. This operator operates on the numbers, characters, and date/time operands.
SELECT column_Name1, column_Name2 ...., column_NameN FROM table_Name WHERE column_nameBETWEEN value1 and value2;

The NOT operator in SQL shows the record from the table if the condition evaluates to false. It is always used with the WHERE clause.
SELECT column1, column2 ...., columnN FROM table_Name WHERE NOT condition;  

The LIKE operator in SQL shows those records from the table which match with the given pattern specified in the sub-query.
SELECT column_Name1, column_Name2 ...., column_NameN FROM table_Name WHERE column_name LIKE pattern;

--Bitwise Operators:
The Bitwise AND operator performs the logical AND operation on the given Integer values. This operator checks each bit of a value with the corresponding bit of another value.
SELECT column1 & column2 & .... & columnN FROM table_Name [WHERE conditions] ;  

The Bitwise OR operator performs the logical OR operation on the given Integer values. This operator checks each bit of a value with the corresponding bit of another value.
SELECT column1 | column2 | .... | columnN FROM table_Name [WHERE conditions] ;

