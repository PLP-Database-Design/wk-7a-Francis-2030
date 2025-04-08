Question 1
-- Transform ProductDetail table to achieve 1NF
-- Each product from the 'Products' column is split into individual rows
INSERT INTO ProductDetail1NF (OrderID, CustomerName, Product)
VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');

Question 2
-- Step 1: Create a new table for customer details
CREATE TABLE CustomerDetails (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

-- Insert data into CustomerDetails table
INSERT INTO CustomerDetails (OrderID, CustomerName)
VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');

-- Step 2: Modify the original OrderDetails table to exclude CustomerName
CREATE TABLE OrderDetails2NF (
    OrderID INT,
    Product VARCHAR(255),
    Quantity INT,
    PRIMARY KEY (OrderID, Product)
);

-- Insert data into the updated OrderDetails table
INSERT INTO OrderDetails2NF (OrderID, Product, Quantity)
VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);
