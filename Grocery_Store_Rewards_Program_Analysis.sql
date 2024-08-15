## Analyzed a grocery store's rewards program to assess customer engagement, spending patterns, and reward effectiveness using SQL.

## How This Analysis Can Help Businesses

-- This analysis provides valuable insights into customer engagement and spending behavior, helping businesses understand how effectively their rewards program is utilized. By identifying trends and areas for improvement, businesses can optimize their rewards offerings to better align with customer preferences and increase overall program effectiveness.

CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone_number TEXT
);

CREATE TABLE Transactions (
    transaction_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    transaction_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
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


INSERT INTO Customers (first_name, last_name, email, phone_number) 
VALUES 
('John', 'Doe', 'johndoe@example.com', '123-456-7890'),
('Jane', 'Smith', 'janesmith@example.com', '234-567-8901'),
('Alice', 'Johnson', 'alicejohnson@example.com', '345-678-9012');


INSERT INTO Transactions (customer_id, transaction_date, amount) 
VALUES 
(1, '2024-08-01', 120.50),
(2, '2024-08-02', 75.00),
(3, '2024-08-03', 200.00),
(1, '2024-08-04', 50.00);


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

-- Understanding Points Distribution
-- 1. How many distinct customers have earned points?
SELECT COUNT(DISTINCT pe.customer_id) AS distinct_customers
FROM Points_Earnings pe;

-- Analyzing Customer Spending
-- 2. Which customers spent more than $100 in a single transaction and earned points?
SELECT c.first_name, c.last_name, t.amount, pe.points_earned
FROM Customers c
JOIN Transactions t ON c.customer_id = t.customer_id
JOIN Points_Earnings pe ON t.transaction_id = pe.transaction_id
WHERE t.amount > 100;

-- Most Redeemed Rewards
-- 3. Which rewards have been redeemed the most frequently?
SELECT r.reward_name, COUNT(cr.reward_id) AS times_redeemed
FROM Rewards r
JOIN Customer_Rewards cr ON r.reward_id = cr.reward_id
GROUP BY r.reward_name
ORDER BY times_redeemed DESC;

-- Average Points Per Transaction
-- What is the average number of points earned per transaction for customers who spent more than $50?
SELECT AVG(pe.points_earned) AS avg_points
FROM Points_Earnings pe
JOIN Transactions t ON pe.transaction_id = t.transaction_id
WHERE t.amount > 50;

-- How are points adjusted based on spending levels?
SELECT c.first_name, c.last_name, t.amount,
       CASE 
           WHEN t.amount < 50 THEN 'Low Spender'
           WHEN t.amount BETWEEN 50 AND 100 THEN 'Medium Spender'
           ELSE 'High Spender'
       END AS spending_level,
       pe.points_earned
FROM Customers c
JOIN Transactions t ON c.customer_id = t.customer_id
JOIN Points_Earnings pe ON t.transaction_id = pe.transaction_id;

