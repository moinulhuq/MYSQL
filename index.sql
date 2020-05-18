SQL
---

+-----------------------------+-----------------------------------------------+--------------------------------------------------------+
|             SQL             |                   DataType                    |                         Values                         |
+-----------------------------+-----------------------------------------------+--------------------------------------------------------+
| CREATE TABLE `testtable`  ( |                                               |                                                        |
|                             | /*Numeric Data Types*/                        |                                                        |
|                             |   `column_1` int(11) NOT NULL AUTO_INCREMENT, | -2147483648 to 2147483647.                             |
|                             |   `column_2` smallint(6),                     | -32768 to 32767.                                       |
|                             |   `column_3` tinyint(4),                      | -128 to 127                                            |
|                             |   `column_4` mediumint(9),                    | -2147483648 to 2147483647.                             |
|                             |   `column_5` bigint(20),                      | -9223372036854775808 to 9223372036854775807.           |
|                             |   `column_6` decimal(10, 0),                  | 10 is the precision and 2 is the scale                 |
|                             |   `column_7` float,                           | -3.402823466E+38 to -1.175494351E-38                   |
|                             |   `column_8` double,                          | -1.7976931348623157E+ 308 to -2.2250738585072014E- 308 |
|                             |   `column_9` bit(1),                          | Binary digit range 1 - 64                              |
|                             |                                               |                                                        |
|                             | /* Date and Time Data Types */                |                                                        |
|                             |   `column_10` date,                           | '1000-01-01' to '9999-12-31'.                          |
|                             |   `column_12` datetime(0),                    | '1000-01-01 00:00:00' to '9999-12-31 23:59:59'.        |
|                             |   `column_13` timestamp(0),                   | '1970-01-01 00:00:01' UTC to '2038-01-19 03:14:07' UTC |
|                             |   `column_14` time(0),                        | -838:59:59' to '838:59:59'                             |
|                             |   `column_15` year,                           | year(4) range 1901 to 2155, year(2) range '0' to '99'  |
|                             |                                               |                                                        |
|                             | /* String Data Types*/                        |                                                        |
|                             |   `column_16` char(0),                        | Range in character 0 to 255.                           |
|                             |   `column_17` varchar(0),                     | Range in character 0 to 65,535.                        |
|                             |   `column_18` binary(0),                      | Range in bytes 0 to 255.                               |
|                             |   `column_19` varbinary(0),                   | Range in bytes 0 to 65,535.                            |
|                             |   `column_20` blob NULL,                      | Maximum length of 255 characters                       |
|                             |   `column_21` tinyblob NULL,                  | Maximum length of 255 characters                       |
|                             |   `column_22` longblob NULL,                  | Maximum length of 16777215 characters.                 |
|                             |   `column_23` mediumblob NULL,                | Maximum length of 4294967295 characters                |
|                             |   `column_24` text,                           | Maximum length of 255 characters                       |
|                             |   `column_25` longtext,                       | Maximum length of 16777215 characters.                 |
|                             |   `column_26` mediumtext,                     | Maximum length of 4294967295 characters                |
|                             |                                               |                                                        |
|                             | /* Spatial Data Types */                      |                                                        |
|                             |   `column_27` geometry NULL,                  |                                                        |
|                             |   `column_28` geometrycollection NULL,        |                                                        |
|                             |   `column_29` linestring NULL,                |                                                        |
|                             |   `column_30` multilinestring NULL,           |                                                        |
|                             |   `column_31` point NULL,                     |                                                        |
|                             |   `column_32` multipoint NULL,                |                                                        |
|                             |   `column_33` polygon NULL,                   |                                                        |
|                             |   `column_34` multipolygon NULL,              |                                                        |
|                             |                                               |                                                        |
|                             | /* jSON Data Type */                          |                                                        |
|                             |   `column_35` JSON,                           |                                                        |
|                             |                                               |                                                        |
|                             | PRIMARY KEY (`column_1`)                      |                                                        |
| )                           |                                               |                                                        |
+-----------------------------+-----------------------------------------------+--------------------------------------------------------+


'Customers' Table
-----------------
+------------+------------------------------------+----------------------+--------------------------------+--------------+------------+---------+
| CustomerID |            CustomerName            |     ContactName      |            Address             |     City     | PostalCode | Country |
+------------+------------------------------------+----------------------+--------------------------------+--------------+------------+---------+
|          1 | Alfreds Futterkiste                | Maria Anders         | Obere Str. 57                  | Berlin       | 12209      | Germany |
|          2 | Ana Trujillo Emparedados y helados | Ana Trujillo         | Avda. de la ConstituciÃ³n 2222 | MÃ©xico D.F. | 5021       | Mexico  |
|          3 | Antonio Moreno TaquerÃ­a            | Antonio Moreno       | Mataderos 2312                 | MÃ©xico D.F. | 5023       | Mexico  |
|          4 | Around the Horn                    | Thomas Hardy         | 120 Hanover Sq.                | London       | WA1 1DP    | UK      |
|          5 | Berglunds snabbkÃ¶p                | Christina Berglund   | BerguvsvÃ¤gen 8                | LuleÃ¥       | S-958 22   | Sweden  |
|          6 | Blauer See Delikatessen            | Hanna Moos           | Forsterstr. 57                 | Mannheim     | 68306      | Germany |
|          7 | Blondel pÃ¨re et fils              | FrÃ©dÃ©rique Citeaux | 24, place KlÃ©ber              | Strasbourg   | 67000      | France  |
|          8 | BÃ³lido Comidas preparadas         | MartÃ­n Sommer        | C/ Araquil, 67                 | Madrid       | 28023      | Spain   |
|          9 | moin                               | Laurence Lebihans    | 12, rue des Bouchers           | Marseille    | 13008      | France  |
|         10 | Bottom-Dollar Marketse             | Elizabeth Lincoln    | 23 Tsawassen Blvd.             | Tsawassen    | T2F 8M4    | Canada  |
+------------+------------------------------------+----------------------+--------------------------------+--------------+------------+---------+


'tempcustomers' Table
---------------------
+------------+--------------+-------------+---------+------+------------+---------+
| CustomerID | CustomerName | ContactName | Address | City | PostalCode | Country |
+------------+--------------+-------------+---------+------+------------+---------+
| NULL       | NULL         | NULL        | NULL    | NULL | NULL       | NULL    |
+------------+--------------+-------------+---------+------+------------+---------+


'Products' Table
----------------
+-----------+------------------------------+------------+------------+------+-------+
| ProductID |         ProductName          | SupplierID | CategoryID | Unit | Price |
+-----------+------------------------------+------------+------------+------+-------+
|         1 | Chais                        |          1 |          1 |   10 |    18 |
|         2 | Chang                        |          1 |          1 |   24 |    19 |
|         3 | Aniseed Syrup                |          1 |          2 |   12 |    10 |
|         4 | Chef Anton's Cajun Seasoning |          2 |          2 |   48 |    22 |
|         5 | Chef Anton's Gumbo Mix       |          2 |          2 |      |    21 |
+-----------+------------------------------+------------+------------+------+-------+


'Suppliers' Table
-----------------
+------------+-----------------------+----------------------+--------------------------------+--------------+------------+---------+
| SupplierID |     SupplierName      |     ContactName      |            Address             |     City     | PostalCode | Country |
+------------+-----------------------+----------------------+--------------------------------+--------------+------------+---------+
|          1 | Futterkiste           | Maria Anders         | Obere Str. 57                  | Berlin       | 12209      | Germany |
|          2 | Emparedados y helados | Ana Trujillo         | Avda. de la ConstituciÃ³n 2222 | MÃ©xico D.F. | 5021       | Mexico  |
|          3 | TaquerÃ­a              | Antonio Moreno       | Mataderos 2312                 | MÃ©xico D.F. | 5023       | Mexico  |
|          4 | Horn                  | Thomas Hardy         | 120 Hanover Sq.                | London       | WA1 1DP    | UK      |
|          5 | snabbkÃ¶p             | Christina Berglund   | BerguvsvÃ¤gen 8                | LuleÃ¥       | S-958 22   | Sweden  |
|          6 | Delikatessen          | Hanna Moos           | Forsterstr. 57                 | Mannheim     | 68306      | Germany |
|          7 | pÃ¨re et fils         | FrÃ©dÃ©rique Citeaux | 24, place KlÃ©ber              | Strasbourg   | 67000      | France  |
|          8 | preparadas            | MartÃ­n Sommer        | C/ Araquil, 67                 | Madrid       | 28023      | Spain   |
|          9 | moin                  | Laurence Lebihans    | 12, rue des Bouchers           | Marseille    | 13008      | France  |
|         11 | Marketse              | Elizabeth Lincoln    | 23 Tsawassen Blvd.             | Tsawassen    | T2F 8M4    | Canada  |
+------------+-----------------------+----------------------+--------------------------------+--------------+------------+---------+


'Orders' Table
--------------
+---------+------------+------------+-----------+-----------+
| OrderID | CustomerID | EmployeeID | OrderDate | ShipperID |
+---------+------------+------------+-----------+-----------+
|   10248 |         90 |          5 | 7/4/1996  |         3 |
|   10249 |         81 |          6 | 7/5/1996  |         1 |
|   10250 |         34 |          4 | 7/8/1996  |         2 |
|   10251 |         84 |          3 | 7/9/1996  |         1 |
|   10252 |         76 |          4 | 7/10/1996 |         2 |
+---------+------------+------------+-----------+-----------+


'OrderDetails' Table
--------------------
+---------------+---------+-----------+----------+
| OrderDetailID | OrderID | ProductID | Quantity |
+---------------+---------+-----------+----------+
|             1 |   10248 |        11 |       12 |
|             2 |   10248 |        42 |       10 |
|             3 |   10248 |        72 |        5 |
|             4 |   10249 |        14 |        9 |
|             5 |   10249 |        51 |       40 |
+---------------+---------+-----------+----------+


Example 01 - Ceate
------------------
Create 'Customers' table

	CREATE TABLE Customers (
	    CustomerID int,
	    CustomerName varchar(255),
	    ContactName varchar(255),
	    Address varchar(255),
	    City varchar(255),
	    PostalCode varchar(255),
	    Country varchar(255)
	);

Create 'Customers' table using 'tempcustomers' Table. It will create and copy the value of that table

	CREATE TABLE customers AS SELECT * FROM tempcustomers

	CREATE TABLE customers AS SELECT customername, contactname FROM tempcustomers


Example 02 - DROP TABLE
-----------------------
Drop 'Customers' table

	DROP TABLE Customers


Example 03 - TRUNCATE TABLE/ DELETE
-----------------------------------
DELETE/TRUNCATE data of 'Customers' table

	+----------------------------------------+----------------------------------------------+
	|                Truncate                |                    Delete                    |
	+----------------------------------------+----------------------------------------------+
	| Truncate reset identity of table.      | Delete does not reset identity of table.     |
	+----------------------------------------+----------------------------------------------+
	| It locks the entire table.             | It locks the table row.                      |
	+----------------------------------------+----------------------------------------------+
	| We can't use WHERE clause with it.     | We can use WHERE to filter data to delete.   |
	+----------------------------------------+----------------------------------------------+
	| Trigger is not fired while truncate.   | Trigger is fired.                            |
	+----------------------------------------+----------------------------------------------+

	TRUNCATE TABLE Customers

	DELETE FROM Customers

	DELETE FROM Customers where CustomerID=1


Example 04 - UPDATE 
-------------------
UPDATE statement is used to modify the existing records in a table.

Update one row

	UPDATE Customers
		SET ContactName = 'Alfred Schmidt', 
		City= 'Frankfurt'
		WHERE CustomerID = 1;

Update multiple row

	UPDATE Customers
		SET ContactName='Juan'
		WHERE Country='Mexico';

Example 05 - Insert
-------------------
Insert INTO 'Customers' table without mentioning the column name

	insert INTO customers values('1', 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany')
	insert INTO customers values('2', 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico')
	insert INTO customers values('3', 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico')
	insert INTO customers values('4', 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK')
	insert INTO customers values('5', 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden')
	insert INTO customers values('6', 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany')
	insert INTO customers values('7', 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg', '67000', 'France')
	insert INTO customers values('8', 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain')
	insert INTO customers values('9', 'Bon app', 'Laurence Lebihans', '12, rue des Bouchers', 'Marseille', '13008', 'France')
	insert INTO customers values('10', 'Bottom-Dollar Marketse', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada')


Example 06 - Insert
-------------------
Insert INTO 'Customers' table with column name

	insert INTO customers(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values('1', 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany')
	insert INTO customers(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values('2', 'Ana Trujillo helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico')
	insert INTO customers(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values('3', 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico')
	insert INTO customers(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values('4', 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK')
	insert INTO customers(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values('5', 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden')
	insert INTO customers(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values('6', 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany')
	insert INTO customers(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values('7', 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg', '67000', 'France')
	insert INTO customers(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values('8', 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain')
	insert INTO customers(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values('9', 'Bon app', 'Laurence Lebihans', '12, rue des Bouchers', 'Marseille', '13008', 'France')
	insert INTO customers(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country) values('10', 'Bottom-Dollar Marketse', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada')


Example 07 - INSERT INTO SELECT
-------------------------------
INSERT INTO SELECT statement copies data from one table and inserts it into another table. Data types in source and target tables match

	Insert into tempcustomers select * from customers where customers.ContactName like 'a%'

	INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country) SELECT SupplierName, ContactName, Address, City, PostalCode, Country FROM Suppliers


Example 08 - Select
-------------------
Select all from 'customers' table

	SELECT * FROM Customers


Example 09 - Select column
--------------------------
Select specific column from 'customers' table

	SELECT CustomerName, ContactName, Address FROM Customers


Example 10 - Select LIMIT
-------------------------
Select limited row from 'customers' table using LIMIT

	SELECT * FROM Customers LIMIT 2


Example 11 - Select COUNT
-------------------------
Count rows of 'Products' table using COUNT

	SELECT COUNT(*) FROM Customers

	SELECT COUNT(ProductID) FROM Customers


Example 12 - Select AVG
-------------------------
Average the Price of 'Products' using AVG

	SELECT AVG(Price) FROM Customers


Example 13 - Select SUM
-----------------------
Summation of 'Products' Price using SUM

	SELECT SUM(Price) FROM Customers


Example 14 - Select MIN
-----------------------
MIN() function returns the smallest value of the selected column

	SELECT MIN(Price) FROM Customers


Example 15 - Select MAX
-----------------------
MAX() function returns the largest value of the selected column

	SELECT MAX(Price) FROM Customers


Example 16 - Select BETWEEN
---------------------------
BETWEEN operator selects values within a given range. The values can be numbers, text, or dates

	SELECT * FROM Products WHERE Price BETWEEN 10 AND 20

Example 17 - Select Aliases
---------------------------
SQL aliases are used to give a table, or a column in a table, a temporary name.

	SELECT CustomerID AS ID, CustomerName AS Customer FROM Customers

	SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address FROM Customers

	SELECT o.OrderID, o.OrderDate, c.CustomerName FROM Customers AS c, Orders AS o WHERE c.CustomerName='Around the Horn' AND c.CustomerID=o.CustomerID


Example 18 - WHERE 
------------------
WHERE is used to filter records

	SELECT * FROM Customers WHERE Country='Germany'

	SELECT * FROM Customers WHERE NOT Country='Germany'

	SELECT * FROM Customers WHERE Country='Germany' AND City='Berlin'

	SELECT * FROM Customers WHERE Country='Germany' AND City='Berlin' OR City='Mannheim'


Example 19 - ORDER BY 
---------------------
To sort table either ascending or descending order

	SELECT * FROM Customers ORDER BY Country

Will sort by "Country" and "CustomerName" means that it will orders by Country, but if some rows have the same Country, it will orders them by CustomerName

	SELECT * FROM Customers ORDER BY Country, CustomerName

	SELECT * FROM Customers ORDER BY Country DESC

	SELECT * FROM Customers ORDER BY Country DESC, CustomerName ASC


Example 20 - NULL Operator
--------------------------
To sort table either ascending or descending order

	SELECT * FROM Customers WHERE Address IS NOT NULL

	SELECT * FROM Customers WHERE Address IS NULL


Example 21 - LIKE
-----------------
The LIKE operator is used to search for a specified pattern in a column.

	1) % - The percent sign represents zero, one, or multiple characters

	2) _ - The underscore represents a single character

CustomerName starting with "a"

	SELECT * FROM Customers WHERE CustomerName LIKE 'a%'

CustomerName ending with "a"

	SELECT * FROM Customers WHERE CustomerName LIKE '%a'

CustomerName that have "or" in any position

	SELECT * FROM Customers WHERE CustomerName LIKE '%or%'

CustomerName that have "r" in the second position

	SELECT * FROM Customers WHERE CustomerName LIKE '_r%'

CustomerName that starts with "a" and are at least 3 characters in length

	SELECT * FROM Customers WHERE CustomerName LIKE 'a__%'

ContactName that starts with "a" and ends with "o"

	SELECT * FROM Customers WHERE ContactName LIKE 'a%o'

CustomerName that does NOT start with "a"

	SELECT * FROM Customers WHERE CustomerName NOT LIKE 'a%'

City starting with "L", followed by any character, followed by "n", followed by any character, followed by "on"

	SELECT * FROM Customers WHERE City LIKE 'L_n_on'


Example 22 - REGEXP
-----------------
REGEXP is the operator used to perform regular expression pattern matches

City starting with "b", "s", or "p"

	SELECT * FROM Customers WHERE City REGEXP '^[lb]'

If you're concerned about being case sensitive:

	SELECT * FROM Customers WHERE City REGEXP BINARY '^[LB]'

Find names containing exactly five characters, use ^ and $ to match the beginning and end of the name, and five instances in between

	SELECT * FROM Customers WHERE City REGEXP '^.....$'	


Example 23 - GROUP BY 
---------------------
GROUP BY statement groups rows that have the same values into summary rows. GROUP BY statement is often used with aggregate functions (COUNT, MAX, MIN, SUM, AVG) to group the result-set by one or more columns.

Find the multiple 'Country' occurance in table

	SELECT COUNT(Country), Country FROM Customers GROUP BY Country;

Find the max 'CustomerID' within the group

	SELECT MAX(CustomerID), CustomerID FROM Customers GROUP BY Country;

With join

	SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID GROUP BY ShipperName;


Example 24 - HAVING  
-------------------
HAVING clause was added to SQL because the WHERE keyword could not be used with aggregate functions. HAVING clause applies a filter condition to each group of rows, while the WHERE clause applies the filter condition to each individual row.

Will return country list which has more than one occurance in table

	SELECT COUNT(CustomerID), Country FROM Customers GROUP BY Country HAVING COUNT(CustomerID) > 1

Will return country list which has more than one occurance in table with where clause

	SELECT COUNT(CustomerID), Country FROM Customers WHERE Country = 'Mexico' OR Country = 'France' GROUP BY Country HAVING COUNT(CustomerID) > 1


Example 25 - IFNULL() / COALESCE()
----------------------------------
If Units values are NULL, the result will be NULL. To prevent this use IFNULL() / COALESCE()

	SELECT ProductName,  IFNULL(Unit, 1) * Price as UnitPrice FROM Products

	(or)

	SELECT ProductName,  COALESCE(Unit, 1) * Price as UnitPrice FROM Products


Example 26 - Select UNION 
-------------------------
The UNION operator is used to combine the result-set of two or more SELECT statements.

	-Each SELECT statement within UNION must have the same number of columns

	-The columns must also have similar data types

	-The columns in each SELECT statement must also be in the same order
		
Show all except the one which is common in both table

	SELECT CustomerName FROM Customers UNION SELECT SupplierName FROM Suppliers

	SELECT CustomerName FROM Customers UNION ALL SELECT SupplierName FROM Suppliers

	SELECT City, Country FROM Customers WHERE Country='Germany' UNION SELECT City, Country FROM Suppliers WHERE Country='Germany' ORDER BY City


Example 27 - Select IN
----------------------
IN operator allows you to specify multiple values in a WHERE clause

	SELECT * FROM Customers WHERE Country IN ('Germany', 'France', 'UK')

	SELECT * FROM Customers WHERE Country NOT IN ('Germany', 'France', 'UK')

	SELECT * FROM Customers WHERE Country IN (SELECT Country FROM Customers WHERE City LIKE 'L%')


Example 28 - EXISTS  
-------------------
EXISTS operator is used to test for the existence of any record in a subquery. This operator returns true if the subquery returns one or more records.

	SELECT SupplierName FROM Suppliers WHERE EXISTS (SELECT products.ProductName FROM products where products.SupplierID=Suppliers.SupplierID)


Same result different query

SELECT ProductName
FROM Products
WHERE ProductID = ANY (SELECT ProductID FROM OrderDetails WHERE Quantity = 10);

SELECT ProductName
FROM Products, OrderDetails 
where Products.ProductID = OrderDetails.ProductID and OrderDetails.Quantity = 10


SELECT ProductName
FROM Products
WHERE ProductID IN (SELECT ProductID FROM OrderDetails WHERE Quantity < 99);


SELECT ProductName
FROM Products
WHERE EXISTS (SELECT ProductID FROM OrderDetails WHERE Products.ProductID = OrderDetails.ProductID and Quantity < 99);


Example 29 - ANY  
----------------
ANY and ALL operators are used with a WHERE or HAVING clause.

	ANY operator returns true if any values of the subquery meet the condition.

	ALL operator returns true if all values of that subquery meet the condition.

	SELECT ProductName FROM Products WHERE ProductID = ANY (SELECT ProductID FROM OrderDetails WHERE Quantity < 99)


Example 30 - LEFT JOIN  
----------------------
LEFT JOIN keyword returns all records from the left table and the matched records from the right table. The result is NULL from the right side, if there is no match.

	Select * from products left join orderdetails on products.ProductID=orderdetails.ProductID


Example 31 - RIGHT JOIN  
-----------------------
RIGHT JOIN keyword returns all records from the right table and the matched records from the left table. The result is NULL from the left side, when there is no match.

	Select * from products right join orderdetails on products.ProductID=orderdetails.ProductID


Example 32 - INNER JOIN/ JOIN
-----------------------------
Returns records that have matching values in both tables.

	Select * from products inner join orderdetails on products.ProductID=orderdetails.ProductID

	(or)

	Select * from products join orderdetails on products.ProductID=orderdetails.ProductID


Example 33 - FULL OUTER JOIN/ FULL JOIN
---------------------------------------
FULL OUTER JOIN combines the results of matched or unmatched rows from the both tables. In Mysql we don't have FULL OUTER JOIN on MySQL but we can achieve them the following way

	Select * from products left join orderdetails on products.ProductID=orderdetails.ProductID

	UNION

	Select * from products right join orderdetails on products.ProductID=orderdetails.ProductID


Example 34 - CASE
-----------------
CASE statement goes through conditions and returns a value when the first condition is met (like an IF-THEN-ELSE statement). So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause. If there is no ELSE part and no conditions are true, it returns NULL.

	SELECT OrderID, Quantity,
	CASE
	    WHEN Quantity > 30 THEN 'The quantity is greater than 30'
	    WHEN Quantity = 30 THEN 'The quantity is 30'
	    ELSE 'The quantity is under 30'
	END AS QuantityText
	FROM OrderDetails


	SELECT CustomerName, City, Country FROM Customers
	ORDER BY
	(CASE
		WHEN City IS NULL THEN Country
		ELSE City
	END)


Example 35 - ALTER TABLE
------------------------
Alter 'Customers' table

	To rename table

		ALTER TABLE Customers RENAME TO Customer

	To drop column

		ALTER TABLE Customers DROP COLUMN emaill

	To add column

		ALTER TABLE Customers ADD emaill varchar(255)

	To add column at first position

		ALTER TABLE Customers ADD phone varchar(255) FIRST
		
	To add column after ‘customername’

		ALTER TABLE Customers ADD fb varchar(255) AFTER customername

	To rename column and modify datatype

		ALTER TABLE Customers CHANGE emaill Email char(255)

	To rename column and modify datatype on multiple column

		ALTER TABLE Customers CHANGE phone Phone  varchar(255), CHANGE email Email varchar(255)

	To modify datatype

		ALTER TABLE Customers MODIFY Email varchar(255)

	To modify datatype on multiple column

		ALTER TABLE Customers MODIFY Phone  char(255), MODIFY Email char(255)


Example 36 - Constraint(NOT NULL/ CHECK / DEFAULT)
--------------------------------------------------
NOT NULL - Ensures that a column cannot have a NULL value

CHECK - Ensures that all values in a column satisfies a specific condition

DEFAULT - Sets a default value for a column when no value is specified

	CREATE TABLE Persons (
	    ID int NOT NULL UNIQUE,
		LName varchar(255) NULL DEFAULT NULL,
		FName varchar(255) DEFAULT 'Person',
		Age int,
		CHECK (Age>=18)
	);


Example 37 - AUTO INCREMENT
---------------------------
Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table. It Often used with primary key field.

	CREATE TABLE Persons (
	  ID int NOT NULL AUTO_INCREMENT ,
		LName varchar(255),
		FName varchar(255),
		Age int,
		PRIMARY KEY(ID)
	);

Starting value for AUTO_INCREMENT is 1 but to let the AUTO_INCREMENT sequence start with another value use 

	ALTER TABLE Persons AUTO_INCREMENT=100;


Example 38 - Constraint(UNIQUE)
-------------------------------
UNIQUE - constraint ensures that all values in a column are different. A PRIMARY KEY constraint automatically has a UNIQUE constraint. However, you can have many UNIQUE constraints per table, but only one PRIMARY KEY constraint per table.

	CREATE TABLE Persons (
	  	ID int NOT NULL UNIQUE,
		LName varchar(255),
		FName varchar(255),
		Age int
	)

	(or)

	CREATE TABLE Persons (
	  	ID int NOT NULL,
		LName varchar(255),
		FName varchar(255),
		Age int,
		UNIQUE (ID)
	);

UNIQUE constraint on multiple columns

	CREATE TABLE Persons (
	  	ID int NOT NULL,
		LName varchar(255),
		FName varchar(255),
		Age int,
		CONSTRAINT UC_Person UNIQUE (ID,LName)
	);


Example 39 - PRIMARY KEY
------------------------
 PRIMARY KEY - constraint uniquely identifies each record. It must contain UNIQUE values and cannot contain NULL value. Table can have only ONE primary key but primary key can consist of single or multiple columns

	 CREATE TABLE Persons (
	    ID int NOT NULL PRIMARY KEY,
	    LName varchar(255) NOT NULL,
	    FName varchar(255),
	    Age int
	);

	(or)

	CREATE TABLE Persons (
	    ID int NOT NULL,
	    LName varchar(255) NOT NULL,
	    FName varchar(255),
	    Age int,
	    PRIMARY KEY (ID)
	);

PRIMARY KEY constraint on multiple columns

	CREATE TABLE Persons (
	    ID int NOT NULL,
	    LName varchar(255) NOT NULL,
	    FName varchar(255),
	    Age int,
	    CONSTRAINT PK_Person PRIMARY KEY (ID,LName)
	);


Example 40 - FOREIGN KEY
------------------------
 FOREIGN KEY - used to link two tables. FOREIGN KEY refers the PRIMARY KEY in another table.

	CREATE TABLE Orders (
	    OrderID int NOT NULL,
	    OrderNumber int NOT NULL,
	    PersonID int,
	    FOREIGN KEY (PersonID) REFERENCES Persons(ID)
	);

	(or)

	CREATE TABLE Orders (
	    OrderID int NOT NULL,
	    OrderNumber int NOT NULL,
	    PersonID int,
	    CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID) REFERENCES Persons(ID)
	);

FOREIGN KEY constraint on multiple columns

	CREATE TABLE Orders (
	    OrderID int NOT NULL,
	    OrderNumber int NOT NULL,
	    PersonID int,
	    LName varchar(255) NOT NULL,
	    CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID, LName) REFERENCES Persons(ID, LName)
	);


Example 41 - VIEW 
-----------------
View is a virtual table based on the result-set of an SQL statement. A view contains rows and columns, just like a real table. You can add SQL functions, WHERE, and JOIN statements to a view and present the data as if the data were coming from one single table. A view always shows up-to-date data. The database engine recreates the data every time a user queries a view.

	CREATE VIEW German_Customers AS
	SELECT CustomerName, ContactName
	FROM Customers
	WHERE Country = 'Germany';

To see the view

	SELECT * FROM german_customers

To drop the view

	DROP VIEW german_customers

To update the view

	CREATE OR REPLACE VIEW German_Customers AS
	SELECT CustomerName, ContactName
	FROM Customers
	WHERE Country = 'Germany';	

To create the view form join

	CREATE or REPLACE VIEW customer_order AS 
	SELECT customers.CustomerID, 
	CustomerName, 
	ContactName, 
	Address, 
	City,
	PostalCode, 
	Country, 
	OrderID, 
	EmployeeID, 
	OrderDate, 
	ShipperID 
	FROM customers 
	LEFT JOIN orders 
	ON customers.CustomerID = orders.CustomerID

Note: No duplicate column name is allowed, 'CustomerID' used in both table so select only one like 'customers.CustomerID'


Example 42 - INDEX 
------------------
Suppose you have a phone book that contains all the names and phone numbers of people. Let’s find ‘Bob Cat’s’ phone number, Knowing that the names are alphabetically ordered, you first look for the page where the last name is Cat, then you look for Bob and his phone number. If the names in the phone book were not sorted alphabetically, you need to go through all pages. This is called sequential searching. 

Relating the phone book to the database table we can do following in the database table

	SELECT phone_number FROM phonebooks WHERE first_name = 'Bob' AND last_name = 'Cat'

It is pretty easy. Although the query is fast, the database has to scan all the rows of the table until it finds the row. If the table has millions of rows, without an index, the data retrieval would take a lot of time to return the result. 

An index is a data structure such as B-Tree that improves the speed of data retrieval on a table. Only create indexes on columns that will be frequently searched because updating a table with indexes takes more time than updating a table without (because the indexes also need an update).

	CREATE TABLE Persons (
		ID int NOT NULL,
		LName varchar(255),
		FName varchar(255),
		Age int,
		PRIMARY KEY(ID),
		INDEX (LName,FName) 
	)

To add an index for a column or a set of columns

	CREATE INDEX idx_name ON Persons (LName, FName)

To add an index for a column or a set of columns

	CREATE INDEX idx_name ON Persons (LName, FName)

Creates a unique index on a table. Duplicate values are not allowed

	CREATE UNIQUE INDEX idx_name ON Persons (LName, FName)

The DROP INDEX statement is used to delete an index in a table
	
	ALTER TABLE Persons DROP INDEX idx_name


Example 43 - TRIGGER 
--------------------
In MySQL, 6 type of triggers that can be made

	After/Before insert
	After/Before update
	After/Before delete

After/Before insert - syntax
----------------------------

	CREATE TRIGGER trigger_name  
	    AFTER/BEFORE INSERT  
	         ON table_name FOR EACH ROW  
	         BEGIN  
	        --variable declarations  
	        --trigger code  
	        END;  

AFTER/BEFORE trigger means trigger will invoke after/before the record is inserted.

	CREATE OR REPLACE TRIGGER `customers_before_insert` 
		BEFORE INSERT 
			ON `customers` 
			FOR EACH ROW 
			INSERT INTO tempcustomers values(null, 'BEFORE', 'BEFORE', 'BEFORE', 'BEFORE', '420', 'BEFORE')

	CREATE OR REPLACE TRIGGER `customers_after_insert` 
		AFTER INSERT 
			ON `customers` 
			FOR EACH ROW 
			INSERT INTO tempcustomers values(null, 'AFTER', 'AFTER', 'AFTER', 'AFTER', '421', 'AFTER')

	INSERT INTO customers values(null, 'ANYVALUE', 'ANYVALUE', 'ANYVALUE', 'ANYVALUE', '007', 'ANYVALUE')

If any value inserted in ‘customers’ table trigger will insert two values in ‘tempcustomers’


AFTER/ BEFORE update - syntax
-----------------------------

	CREATE TRIGGER trigger_name  
	    AFTER/BEFORE UPDATE  
	         ON table_name FOR EACH ROW  
	         BEGIN  
	        --variable declarations  
	        --trigger code  
	        END;  

AFTER/BEFORE UPDATE trigger means trigger will invoke after/before the record is updated.

	CREATE OR REPLACE TRIGGER `customers_before_update` 
		BEFORE UPDATE 
			ON `customers` 
			FOR EACH ROW 
			UPDATE tempcustomers SET 
			CustomerName='BEFORE',
			ContactName='BEFORE',
			Address='BEFORE',
			City='BEFORE',
			PostalCode='420',
			Country='BEFORE'
			WHERE CustomerID = 9

	CREATE OR REPLACE TRIGGER `customers_after_update` 
		AFTER UPDATE 
			ON `customers` 
			FOR EACH ROW 
			UPDATE tempcustomers SET 
			CustomerName='AFTER',
			ContactName='AFTER',
			Address='AFTER',
			City='AFTER',
			PostalCode='421',
			Country='AFTER'
			WHERE CustomerID = 10

	UPDATE customers SET CustomerName='ANYVALUE',
		ContactName='ANYVALUE',
		Address='ANYVALUE',
		City='ANYVALUE',
		PostalCode='420',
		Country='ANYVALUE'
		WHERE CustomerID = 11

If any value updated in ‘customers’ table trigger will update two values in ‘tempcustomers’

AFTER/ BEFORE delete - syntax
-----------------------------

	CREATE TRIGGER trigger_name  
	    AFTER/BEFORE DELETE  
	         ON table_name FOR EACH ROW  
	         BEGIN  
	        --variable declarations  
	        --trigger code  
	        END;  

AFTER/BEFORE DELETE trigger means trigger will invoke after/before the record is deleted.

	CREATE OR REPLACE TRIGGER `customers_before_delete` 
		BEFORE DELETE 
			ON `customers` 
			FOR EACH ROW 
			DELETE FROM tempcustomers WHERE CustomerID = 9

	CREATE OR REPLACE TRIGGER `customers_after_delete` 
		AFTER DELETE 
			ON `customers` 
			FOR EACH ROW 
			DELETE FROM tempcustomers WHERE CustomerID = 10

	DELETE FROM customers WHERE CustomerID = 11

If any value deleted in ‘customers’ table trigger will delete two values in ‘tempcustomers’
