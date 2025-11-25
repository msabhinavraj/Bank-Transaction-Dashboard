create database BankTransaction;
use BankTransaction;


CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  Name VARCHAR(100),
  Email VARCHAR(100)
);

CREATE TABLE Transactions (
  TransactionID INT PRIMARY KEY,
  CustomerID INT,
  Date DATE,
  Amount DECIMAL(12,2),
  Type VARCHAR(20),
  Balance DECIMAL(12,2),
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Add some sample data
INSERT INTO Customers VALUES (1, 'Alice', 'alice@email.com');
INSERT INTO Customers VALUES (2, 'Bob', 'bob@email.com');
INSERT INTO customers VALUE (3, 'Dog', 'dog@email.com');

INSERT INTO Transactions VALUES (101, 1, '2025-01-10', 2000, 'Deposit', 2000);
INSERT INTO Transactions VALUES (102, 1, '2025-01-20', 500, 'Withdrawal', 1500);
INSERT INTO Transactions VALUES (103, 2, '2025-01-15', 3000, 'Deposit', 3000);
INSERT INTO Transactions VALUES (104, 3, '2025-01-21', 2500, 'Deposit', 500);
INSERT INTO Transactions VALUES (105, 3, '2025-01-22', 1000, 'Deposit', 1000); 


SELECT SUM(Amount) FROM Transactions WHERE Type = 'Deposit';

SELECT SUM(Amount) FROM Transactions WHERE Type = 'Withdrawal';

SELECT DATE_FORMAT(Date, '%Y-%m') AS Month, Type, SUM(Amount) AS Total
  FROM Transactions GROUP BY Month, Type;
  
  SELECT CustomerID, MAX(Balance) FROM Transactions GROUP BY CustomerID;


select * from customers

