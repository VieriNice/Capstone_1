
 CREATE TABLE employees (
	EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(30),
    LastName VARCHAR(30),
    Email VARCHAR(50) 
);
 
 #Changed the table from what it originally was. Added all of the payment methods into a PaymentMethods column and used ENUM instead of BOOLEAN. Also added the amount payed and used a DECIMAL commmand#
 CREATE TABLE transactions (
	TransactionsID INT PRIMARY KEY AUTO_INCREMENT,
    Amount DECIMAL (10,2) NOT NULL,
    PaymentMethod ENUM('Visa', 'Credit Card', 'Cash')
);


CREATE TABLE insurance ( 
	InsuranceID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    Basic BOOLEAN,
    Regular BOOLEAN, 
    FullCoverage BOOLEAN,
    CONSTRAINT fk1 FOREIGN KEY (CustomerID)
		REFERENCES customer (CustomerID)
);


#Updated the customer table. Added the purchase date where we can tell when a customer purchased one of our policies#
CREATE TABLE customer (
	CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(30) NOT NULL,
    LastName VARCHAR(30) NOT NULL,
    Sex VARCHAR(30) NOT NULL,
    BirthYear VARCHAR(4) NOT NULL,
    Address VARCHAR(50),
    PhoneNumber VARCHAR(30),
    Email VARCHAR(50),
    Psword VARCHAR(30),
    PurchaseDate VARCHAR(30),
    InsuranceID INT,
    EmployeeID INT,
    TransactionsID INT,
    CONSTRAINT fk2 FOREIGN KEY (EmployeeID)
		REFERENCES employees (EmployeeID),
	CONSTRAINT fk3 FOREIGN KEY (TransactionsID)
		REFERENCES transactions (TransactionsID)
	);
		
    
    
    
    
    

    
    