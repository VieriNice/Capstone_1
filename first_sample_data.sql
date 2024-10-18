#First Sample data that was used, but ended up submitting a CSV file from CHATGBT#
INSERT INTO employees (FirstName, LastName, email) VALUES
('John', 'Smith', 'john.smith@gmail.com'),
('Emily', 'Johnson', 'emily.johnson@yahoo.com'),
('Michael', 'Brown', 'Mikebrown1024@hotmail.com'),
('Sarah', 'Davis', 'davis0912@gmail.com') ;

INSERT INTO transactions (VISA, CreditCard, Checks) VALUES
(TRUE, FALSE, FALSE), 
(FALSE, FALSE, TRUE),
(FALSE, TRUE, FALSE),
(FALSE, FALSE, TRUE);

INSERT INTO customer (FirstName, LastName, Sex, BirthYear, Address, PhoneNumber, Email, Psword) VALUES
('John', 'Doe', 'Male', 1970, '123 Main St, Springfield, IL', '555-123-4567', 'john.doe@example.com', 'Password123!'),
('Jane', 'Smith', 'Female', 1985, '456 Oak St, Springfield, IL', '555-234-5678', 'jane.smith@example.com', 'SecurePassword!'),
('Emily', 'Johnson', 'Female', 1962, '789 Pine St, Springfield, IL', '555-345-6789', 'emily.johnson@example.com', 'MyPassword2023!'),
('Michael', 'Brown', 'Male', 1978, '321 Maple St, Springfield, IL', '555-456-7890', 'michael.brown@example.com', 'Password2023!');
