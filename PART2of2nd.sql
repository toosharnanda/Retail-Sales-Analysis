INSERT INTO Customers (Name, Email, City) VALUES
('Amit Sharma', 'amit1@gmail.com', 'Delhi'),
('Riya Kapoor', 'riya1@gmail.com', 'Mumbai'),
('John Smith', 'john1@gmail.com', 'Bangalore'),
('Neha Gupta', 'neha1@gmail.com', 'Delhi'),
('Rajesh Kumar', 'rajesh1@gmail.com', 'Kolkata'),
('Anita Singh', 'anita1@gmail.com', 'Pune'),
('Vikram Patel', 'vikram1@gmail.com', 'Ahmedabad'),
('Sanya Mehta', 'sanya1@gmail.com', 'Jaipur'),
('Karan Malhotra', 'karan1@gmail.com', 'Lucknow'),
('Priya Verma', 'priya1@gmail.com', 'Chennai'),
('Arjun Nair', 'arjun1@gmail.com', 'Kochi'),
('Meena Joshi', 'meena1@gmail.com', 'Hyderabad'),
('Deepak Yadav', 'deepak1@gmail.com', 'Delhi'),
('Simran Kaur', 'simran1@gmail.com', 'Chandigarh'),
('Rohit Das', 'rohit1@gmail.com', 'Guwahati'),
('Sneha Iyer', 'sneha1@gmail.com', 'Mumbai'),
('Manoj Reddy', 'manoj1@gmail.com', 'Hyderabad'),
('Alok Jain', 'alok1@gmail.com', 'Indore'),
('Divya Bansal', 'divya1@gmail.com', 'Delhi'),
('Saurabh Mishra', 'saurabh1@gmail.com', 'Bhopal'),
('Anjali Desai', 'anjali1@gmail.com', 'Surat'),
('Tarun Chopra', 'tarun1@gmail.com', 'Delhi'),
('Krishna Menon', 'krishna1@gmail.com', 'Trivandrum'),
('Pooja Shah', 'pooja1@gmail.com', 'Mumbai'),
('Aditya Rao', 'aditya1@gmail.com', 'Bangalore'),
('Kavita Sethi', 'kavita1@gmail.com', 'Jaipur'),
('Harsh Vardhan', 'harsh1@gmail.com', 'Delhi'),
('Ramesh Pillai', 'ramesh1@gmail.com', 'Chennai'),
('Sakshi Rawat', 'sakshi1@gmail.com', 'Noida'),
('Nikhil Arora', 'nikhil1@gmail.com', 'Delhi');


INSERT INTO Products (ProductName, Category, Price) VALUES
('Laptop', 'Electronics', 55000.00),
('Smartphone', 'Electronics', 22000.00),
('Headphones', 'Accessories', 1500.00),
('Office Chair', 'Furniture', 7000.00),
('Desk Lamp', 'Furniture', 1200.00),
('Tablet', 'Electronics', 18000.00),
('Smartwatch', 'Electronics', 8000.00),
('Backpack', 'Accessories', 2000.00),
('Printer', 'Electronics', 9000.00),
('Water Bottle', 'Accessories', 500.00);


INSERT INTO Orders (CustomerID, OrderDate) VALUES
(1, '2025-09-01'),
(2, '2025-09-02'),
(3, '2025-09-03'),
(4, '2025-09-04'),
(5, '2025-09-05'),
(6, '2025-09-06'),
(7, '2025-09-07'),
(8, '2025-09-08'),
(9, '2025-09-09'),
(10, '2025-09-10'),
(11, '2025-09-11'),
(12, '2025-09-12'),
(13, '2025-09-13'),
(14, '2025-09-14'),
(15, '2025-09-15'),
(16, '2025-09-16'),
(17, '2025-09-17'),
(18, '2025-09-18'),
(19, '2025-09-19'),
(20, '2025-09-20'),
(21, '2025-09-21'),
(22, '2025-09-22'),
(23, '2025-09-23'),
(24, '2025-09-24'),
(25, '2025-09-25'),
(26, '2025-09-26'),
(27, '2025-09-27'),
(28, '2025-09-28'),
(29, '2025-09-29'),
(30, '2025-09-30'),
(1, '2025-09-11'),
(5, '2025-09-15'),
(10, '2025-09-18'),
(15, '2025-09-20'),
(20, '2025-09-25'),
(25, '2025-09-26'),
(30, '2025-09-27'),
(3, '2025-09-28'),
(7, '2025-09-29'),
(9, '2025-09-30');

INSERT INTO OrderDetails (OrderID, ProductID, Quantity) VALUES
(1, 1, 1),   -- Laptop
(1, 3, 2),   -- Headphones
(2, 2, 1),   -- Smartphone
(3, 4, 1),   -- Office Chair
(4, 5, 3),   -- Desk Lamp
(5, 6, 1),   -- Tablet
(6, 7, 2),   -- Smartwatch
(7, 8, 1),   -- Backpack
(8, 9, 1),   -- Printer
(9, 10, 4),  -- Water Bottle
(10, 2, 2),  -- Smartphone
(11, 1, 1),  -- Laptop
(12, 3, 5),  -- Headphones
(13, 7, 1),  -- Smartwatch
(14, 6, 1),  -- Tablet
(15, 5, 2),  -- Desk Lamp
(16, 9, 1),  -- Printer
(17, 4, 1),  -- Office Chair
(18, 10, 6), -- Water Bottle
(19, 8, 2);  -- Backpack
