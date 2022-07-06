1. CREATE a DATABASE named class_one_assignment.

CREATE DATABASE class_one_assignment;

USE class_one_assignment;

2. CREATE a TABLE named customers. 

CREATE TABLE Customers(
id INT AUTO_INCREMENT,
First_Name VARCHAR(50) NOT NULL,
Last_Name VARCHAR(50) NOT NULL,
Date_of_Birth DATE NOT NULL,
Phone VARCHAR(15) NOT NULL,
Address VARCHAR(50) NOT NULL,
City VARCHAR(15) NOT NULL,
State VARCHAR(15) NOT NULL,
Points INT NOT NULL,
PRIMARY KEY(id)
);

SELECT * FROM Customers;

3. INSERT the following customer DATA:

INSERT INTO Customers(First_Name, Last_Name, Date_of_Birth, Phone, Address, City, State, Points) VALUES
('Babara', 'MacCaffrey', '1986-03-28', '781-932-9754', '0 Sage Terrace', 'Waltham', 'MA', '2273'),
('Ines', 'Brushfield', '1986-04-13', '804-427-9456', '14187 Commercial Trail', 'Hampton', 'VA', '947'),
('Freddi', 'Boagey', '985-02-07', '719-724-7869', '251 Springs Junction', 'olorado Springs', 'CO', '2967'),
('Ambur', 'Roseburgh', '1974-04-14', '407-231-8017', '30 Arapahoe Terrace', 'Orlando', 'FL', '457'),
('Clemmie', 'Betchley', '1973-11-07', '', '5 Spohn Circle', 'Arlington', 'TX', '3675');

SELECT * FROM Customers;

4. SHOW only 2 members whose points are more THAN 1000.

SELECT * FROM Customers WHERE Points >1000 LIMIT 2;

5.Find the customers whose age IS IN 1980 TO 1990 OR points LESS THAN 1000. 

SELECT * FROM Customers WHERE Date_of_Birth BETWEEN '1980-01-01' AND '1990-01-01' OR Points <'1000';

6.Order the customers BY points IN ascending AND descending order.

SELECT * FROM Customers ORDER BY Points ASC;

SELECT * FROM Customers ORDER BY Points DESC;

7. Find the customer whose NAME CONTAINS 'burgh' USING LIKE AND REGEXP

SELECT * FROM Customers WHERE Last_Name LIKE '%burgh';

SELECT * FROM Customers WHERE Last_Name REGEXP 'burgh';

8. Find the customer who does NOT have phone number.

SELECT * FROM Customers GROUP BY First_Name HAVING Phone='';

9. CHANGE the 'Date of Birth' COLUMN NAME INTO 'dob'.

ALTER TABLE Customers CHANGE COLUMN Date_of_Birth dob INT;

10. Find the MAX POINT holder customer.

SELECT MAX(Points), First_Name, Last_Name FROM Customers;

11. EXECUTE a QUERY FOR the following scenario.
IF customers have points LESS THAN 1000, they are bronze member.
IF customers have points more THAN 1000 AND LESS THAN 2000, they are silver member.
IF customers have points more THAN 2000 AND LESS THAN 3000, they are gold member.
IF customers have points more THAN 3000, they are platinum member.

SELECT  First_Name, Last_Name, Points,
CASE
	WHEN Points<1000 THEN 'they are bronze member.'
	WHEN Points>1000 && Points<2000 THEN 'they are silver member.'
	WHEN Points>2000 && Points<3000 THEN 'they are gold member.'
	ELSE 'they are platinum member.'
	END AS Points FROM Customers;




