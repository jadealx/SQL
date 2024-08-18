
CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone_number TEXT,
    age INTEGER,
    gender TEXT,
    income_level DECIMAL(10, 2),
    location TEXT
);

CREATE TABLE Transactions (
    transaction_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    transaction_date DATE,
    amount DECIMAL(10, 2),
    product_id INTEGER,
    points_redeemed INTEGER,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

CREATE TABLE Rewards (
    reward_id INTEGER PRIMARY KEY,
    reward_name TEXT,
    points_required INTEGER,
    discount_amount DECIMAL(10, 2)
);

CREATE TABLE Points_Earnings (
    points_earning_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    transaction_id INTEGER,
    points_earned INTEGER,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (transaction_id) REFERENCES Transactions(transaction_id)
);

CREATE TABLE Customer_Rewards (
    customer_reward_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    reward_id INTEGER,
    redeemed_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (reward_id) REFERENCES Rewards(reward_id)
);

CREATE TABLE Products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    category TEXT,
    price DECIMAL(10, 2)
);

CREATE TABLE Promotions (
    promotion_id INTEGER PRIMARY KEY,
    promotion_type TEXT,
    start_date DATE,
    end_date DATE,
    discount_percentage DECIMAL(5, 2)
);

CREATE TABLE Sales (
    sale_id INTEGER PRIMARY KEY,
    product_id INTEGER,
    promotion_id INTEGER,
    sale_date DATE,
    quantity INTEGER,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (promotion_id) REFERENCES Promotions(promotion_id)
);


INSERT INTO Customers (first_name, last_name, email, phone_number, age, gender, income_level, location) 
VALUES 
('John', 'Doe', 'johndoe@example.com', '123-456-7890', 34, 'M', 55000, 'Toronto'),
('Jane', 'Smith', 'janesmith@example.com', '234-567-8901', 28, 'F', 45000, 'Vancouver'),
('Alice', 'Johnson', 'alicejohnson@example.com', '345-678-9012', 45, 'F', 70000, 'Montreal');

-- Insert products
INSERT INTO Products (product_name, category, price) 
VALUES 
('Milk', 'Dairy', 2.50),
('Bread', 'Bakery', 1.50),
('Eggs', 'Dairy', 3.00);


INSERT INTO Promotions (promotion_type, start_date, end_date, discount_percentage) 
VALUES 
('Summer Sale', '2024-07-01', '2024-07-31', 10.00),
('Back to School', '2024-08-01', '2024-08-15', 15.00);


INSERT INTO Sales (product_id, promotion_id, sale_date, quantity, total_amount)
VALUES 
(1, 1, '2024-08-01', 2, 5.00),
(2, 2, '2024-08-02', 1, 1.50),
(3, NULL, '2024-08-03', 3, 9.00);


INSERT INTO Transactions (customer_id, transaction_date, amount, product_id, points_redeemed) 
VALUES 
(1, '2024-08-01', 120.50, 1, 100),
(2, '2024-08-02', 75.00, 2, 75),
(3, '2024-08-03', 200.00, 3, 200),
(1, '2024-08-04', 50.00, 1, 50);


INSERT INTO Rewards (reward_name, points_required, discount_amount) 
VALUES 
('10% Off', 100, 10.00),
('Free Item', 200, 15.00),
('$20 Off', 300, 20.00);


INSERT INTO Points_Earnings (customer_id, transaction_id, points_earned) 
VALUES 
(1, 1, 120),
(2, 2, 75),
(3, 3, 200),
(1, 4, 50);


INSERT INTO Customer_Rewards (customer_id, reward_id, redeemed_date) 
VALUES 
(1, 1, '2024-08-05'),
(2, 2, '2024-08-06');
    
