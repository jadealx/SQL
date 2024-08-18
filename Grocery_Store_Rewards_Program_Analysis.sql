## Analyzed a grocery store's rewards program to assess customer engagement, spending patterns, and reward effectiveness using SQL.

## How This Analysis Can Help Businesses

-- This analysis provides valuable insights into customer engagement and spending behavior, helping businesses understand how effectively their rewards program is utilized. By identifying trends and areas for improvement, businesses can optimize their rewards offerings to better align with customer preferences and increase overall program effectiveness.

-- Updated Schema as of August 18, 2024
    
-- This schema has been revised to include new tables (Products, Promotions, Sales) and additional columns in existing tables (Customers, Transactions) for a more comprehensive rewards program analysis.
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

-- Promotion Effectiveness
-- Which rewards are associated with the highest total sales?
SELECT r.reward_name, SUM(t.amount) AS total_sales
FROM Customer_Rewards cr
JOIN Rewards r ON cr.reward_id = r.reward_id
JOIN Transactions t ON cr.customer_id = t.customer_id
GROUP BY r.reward_name
ORDER BY total_sales DESC;

--Product Based Analysis
-- Which products are most frequently associated with high-value transactions (over $100)?
SELECT p.product_name, COUNT(t.transaction_id) AS transaction_count
FROM Transactions t
JOIN Products p ON t.product_id = p.product_id
WHERE t.amount > 100
GROUP BY p.product_name
ORDER BY transaction_count DESC;

-- Highest Spending Associated with Rewards 
-- Which rewards are associated with the highest total spending by customers who redeemed them?
SELECT r.reward_name, SUM(t.amount) AS total_spending
FROM Customer_Rewards cr
JOIN Rewards r ON cr.reward_id = r.reward_id
JOIN Transactions t ON cr.customer_id = t.customer_id
GROUP BY r.reward_name
ORDER BY total_spending DESC;

-- Reward Redemption Impact
-- How does the redemption of rewards affect the total points earned by customers?
WITH CustomerPoints AS (
    SELECT c.customer_id, c.first_name, c.last_name, SUM(pe.points_earned) AS total_points_earned
    FROM Customers c
    LEFT JOIN Points_Earnings pe ON c.customer_id = pe.customer_id
    GROUP BY c.customer_id, c.first_name, c.last_name
),
CustomerRewards AS (
    SELECT c.customer_id, COUNT(cr.customer_reward_id) AS rewards_redeemed
    FROM Customers c
    LEFT JOIN Customer_Rewards cr ON c.customer_id = cr.customer_id
    GROUP BY c.customer_id
)
SELECT cp.first_name, cp.last_name, cp.total_points_earned, cr.rewards_redeemed
FROM CustomerPoints cp
LEFT JOIN CustomerRewards cr ON cp.customer_id = cr.customer_id
ORDER BY cr.rewards_redeemed DESC;
