TCL stands for Transaction Control Languages. 
These commands are used for maintaining consistency of the database and for the management of transactions made by the DML commands. 
A Transaction is a set of SQL statements that are executed on the data stored in DBMS. 
Whenever any transaction is made these transactions are temporarily happen in database.
So to make the changes permanent, we use TCL commands. 

1. COMMIT : 
This command is used to save the data permanently. 
Whenever we perform any of the DML command like -INSERT, DELETE or UPDATE, these can be rollback if the data is not stored permanently. 
So in order to be at the safer side COMMIT command is used. 
Syntax:  
commit; 
2. ROLLBACK : 
This command is used to get the data or restore the data to the last savepoint or last committed state. 
If due to some reasons the data inserted, deleted or updated is not correct, you can rollback the data to a particular savepoint or if savepoint is not done, then to the last committed state. 
Syntax:  
rollback;
3. SAVEPOINT : 
This command is used to save the data at a particular point temporarily, so that whenever needed can be rollback to that particular point. 
Syntax:  
Savepoint A; 



Trigger is a statement that a system executes automatically when there is any modification to the database. 
In a trigger, we first specify when the trigger is to be executed and then the action to be performed when the trigger executes. 
Triggers are used to specify certain integrity constraints and referential constraints that cannot be specified using the constraint mechanism of SQL. 

Types of Triggers :
We can define 6 types of triggers for each table: 

1.AFTER INSERT: activated after data is inserted into the table. 

CREATE TRIGGER after_insert_example
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employees_log (employee_id, action, log_date)
    VALUES (NEW.employee_id, 'INSERT', NOW());
END;

 
2.AFTER UPDATE: activated after data in the table is modified.

CREATE TRIGGER after_update_example
AFTER UPDATE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employees_log (employee_id, action, log_date)
    VALUES (NEW.employee_id, 'UPDATE', NOW());
END;

 
3.AFTER DELETE: activated after data is deleted/removed from the table.

CREATE TRIGGER after_delete_example
AFTER DELETE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employees_log (employee_id, action, log_date)
    VALUES (OLD.employee_id, 'DELETE', NOW());
END;

 
4.BEFORE INSERT: activated before data is inserted into the table.

CREATE TRIGGER before_insert_example
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
    SET NEW.hire_date = CURDATE();
END;

 
5.BEFORE UPDATE: activated before data in the table is modified.

CREATE TRIGGER before_update_example
BEFORE UPDATE ON employees
FOR EACH ROW
BEGIN
    IF NEW.salary < OLD.salary THEN
        SET NEW.salary = OLD.salary;
    END IF;
END;

 
6.BEFORE DELETE: activated before data is deleted/removed from the table. 

CREATE TRIGGER before_delete_example
BEFORE DELETE ON employees
FOR EACH ROW
BEGIN
    IF OLD.position = 'Manager' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot delete a manager.';
    END IF;
END;


VIEW command

In SQL, a view is a virtual table based on the result-set of an SQL statement.
A view contains rows and columns, just like a real table. 
The fields in a view are fields from one or more real tables in the database.
You can add SQL statements and functions to a view and present the data as if the data were coming from one single table.
A view is created with the CREATE VIEW statement. 

Syntax:
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;

--EXAMPLE:

CREATE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName
FROM Customers
WHERE Country = 'Brazil';
SELECT * FROM [Brazil Customers];
