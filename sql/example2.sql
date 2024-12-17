-- Create the Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE,
    Phone VARCHAR(20)
);

-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    -- Add other order details as needed (e.g., shipping address, status)
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID) ON DELETE CASCADE
);

-- Add alter statements
ALTER TABLE Customers
ADD COLUMN Address VARCHAR(255);

ALTER TABLE Orders
ADD COLUMN ShippingAddress VARCHAR(255);

ALTER TABLE Orders
MODIFY COLUMN TotalAmount DECIMAL(12, 2);

ALTER TABLE Customers
DROP COLUMN Phone;