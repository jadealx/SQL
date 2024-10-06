## SQL Projects

### Spotify Data Analysis
Utilized SQL to analyze Spotify track data, focusing on:
- Identifying the most popular tracks.
- Comparing attributes such as danceability, energy, loudness, and tempo.
- Exploring patterns and distributions in track characteristics.
- Distinguishing features of high and low popularity tracks.
**Skills:** SQL queries, aggregate functions, JOINs, filtering, and data analysis.

### Chinook Database Analysis
Analyzed the Chinook music store database to answer various business questions, including:
- Sales trends by genre and artist.
- Customer purchase behavior.
- Identifying top-performing employees.
- Analyzing invoice and payment data.
**Skills:** SQL queries, JOINs, GROUP BY, ORDER BY, subqueries, and data analysis.

### Netflix Data Analysis
Performed data analysis on a Netflix dataset to uncover insights such as:
- Trends in movie and TV show releases.
- Genre popularity over time.
- Distribution of ratings and runtime.
- Identifying top directors and actors.
**Skills:** SQL queries, aggregate functions, filtering, and data analysis.

### Customer and Order Analysis
Queried a customer and order database to quantify statistics about customer and order data, including:
- Customer demographics and segmentation.
- Order frequency and volume.
- Revenue trends and patterns.
- Identifying top customers and products.
**Skills:** SQL queries, JOINs, GROUP BY, HAVING, and data analysis.

### Fortune 500 Companies Analysis
Utilized SQL to analyze a Fortune 500 dataset, focusing on:
- Retrieving company names and revenue for companies in the Technology or Healthcare industries with revenue greater than $1 billion.
- Categorizing companies based on paid time off days using a CASE statement.
- Identifying industries with at least 15 paid time off days.
**Skills:** SQL queries, CASE statements, GROUP BY, HAVING, and filtering.

### Superstore Sales Analysis
Performed SQL queries on the Superstore database to analyze item information and pricing, including:
- Ordering items by price.
- Calculating the average price of items.
- Summarizing and analyzing item prices within the "Kitchen Supplies" category.
**Skills:** SQL queries, aggregate functions, ORDER BY, and data analysis.

## Customer Feedback Analysis

### Key Tasks and Techniques
- **Goal Setting:** Evaluated customer feedback ratings to identify areas for improvement in service or product quality.
- **Data Integration:** Joined customer and feedback data using SQL to create a comprehensive view of customer feedback.
- **Query Implementation:** Ran SQL queries to retrieve average ratings and specific feedback comments correlated with lower ratings.
- **Insights Generation:** Analyzed feedback to derive actionable insights, focusing on strengths and areas needing enhancement.

### Skills Used
- **SQL Queries:** Utilized SQL joins (INNER JOIN) and string functions (CONCAT) to combine data from multiple tables.
- **Data Analysis:** Analyzed customer feedback to extract meaningful insights and identify trends in customer satisfaction.
- **Critical Thinking:** Developed recommendations based on feedback analysis to improve customer service and product quality.

### Findings
- **Positive Feedback:** High satisfaction levels indicated by positive comments and ratings.
- **Areas for Improvement:** Identified specific comments that suggest areas needing enhancement, particularly regarding product quality.

### Recommendations
- **Maintain High Standards of Service:** Ensure continued excellence in customer service as highlighted in positive feedback.
- **Address Improvement Areas:** Gather specific details on aspects needing improvement based on mixed feedback.
- **Investigate Product Quality Issues:** Conduct reviews of product quality to address negative feedback and implement quality control measures.
- **Customer Follow-Up:** Implement a system for following up with customers to gather further feedback.
- **Engagement Strategies:** Consider promotions or incentives for customers who provide feedback to encourage participation.

### Note
This analysis is based on a limited dataset and will not be updated in the future.

# Investment Analysis 

## Overview
This project focuses on analyzing investment data across multiple portfolios to assess overall performance and identify trends in user demographics. I revamped this analysis to fine-tune my SQL skills and deepen my understanding of investment behavior.

## Key Insights
1. **Total Investment by User:**
   - Analyzed the total amount invested by each user, revealing significant differences in investment behaviors.
   - Example Findings: 
     - Alice invested a total of $225,000.
     - Bob invested $50,000.
     - Carol invested $8,000.
   
2. **Investment Trends by Age Group:**
   - Assessed total investments across different age groups, identifying which demographics are more actively investing.
   - Example Findings:
     - Age group 30-39 invested a total of $233,000.
     - Age group 40-49 invested $50,000.

3. **Investment Trends by Risk Tolerance:**
   - Evaluated total investments based on risk tolerance levels to understand risk preferences among users.
   - Example Findings:
     - High Risk Tolerance: $225,000.
     - Medium Risk Tolerance: $50,000.
     - Low Risk Tolerance: $8,000.

## SQL Techniques Used
- **JOINS:** Linked data across `Users`, `Portfolios`, and `Investments` tables.
- **Aggregate Functions:** Utilized functions like `SUM` to calculate total investment values and analyze trends.
- **CASE Statements:** Implemented CASE logic to categorize users by age groups.
- **Filtering Techniques:** Applied filtering to analyze data based on demographics and investment behavior.

## Business Application
This analysis offers valuable insights for investment managers, allowing them to understand portfolio performance, identify high-performing investments, and evaluate investor behaviors. These insights can inform strategic investment decisions, optimize portfolio management, and enhance investor relations.

# Grocery Store Rewards Program Analysis

## Overview

This project analyzes a grocery store's rewards program using SQL to assess customer engagement, spending patterns, and the overall effectiveness of the rewards system. The analysis aims to identify key opportunities for optimizing the program to enhance customer satisfaction and profitability by examining how customers are earning and redeeming points, as well as which products and promotions are driving value.

## Analysis Includes

- **Customer Spending Behavior**: Analyzes customer spending patterns to understand how they influence reward redemption.
- **Reward Redemption Analysis**: Evaluates the number of customers engaging with the rewards program and their corresponding spending.
- **Rewards Performance**: Investigates which rewards are associated with the highest spending and the frequency of their redemption.
- **Customer Engagement Metrics**: Assesses overall customer engagement with the rewards program based on spending thresholds and reward usage.

## Skills Used

- **SQL**:
  - **Joins**: Utilized INNER JOIN, LEFT JOIN, and other types to combine data from multiple tables and derive insights.
  - **Aggregation Functions**: Used COUNT, SUM, and AVG to summarize data and extract meaningful metrics.
  - **Grouping**: Employed GROUP BY to aggregate data on specific categories such as customers, rewards, and products.
  - **Conditional Logic**: Implemented CASE statements to classify spending levels and adjust points distribution based on transaction amounts.
  - **Subqueries**: Incorporated subqueries to filter and refine results, ensuring accuracy in the analysis.

- **Database Design**:
  - **Schema Creation**: Designed a relational database schema with tables such as Customers, Transactions, Rewards, Products, etc.
  - **Foreign Key Constraints**: Established relationships between tables to ensure data integrity.

- **Data Analysis**:
  - **Customer Behavior Analysis**: Analyzed spending patterns and reward redemption rates.
  - **Promotion Effectiveness**: Evaluated the impact of promotions on sales.
  - **Product Performance**: Identified top-performing products based on transaction value.

## How This Analysis Can Help Businesses

This analysis provides valuable insights into customer engagement and spending behavior, helping businesses understand the effectiveness of their rewards program. By identifying trends and areas for improvement, businesses can optimize their rewards offerings to better meet customer needs and enhance overall program effectiveness.

# Retail Product Launch & Promotion Effectiveness Analysis

## Overview

This project analyzes retail sales data to evaluate the effectiveness of product launches and promotions. Using SQL, the analysis examines how different promotional campaigns influence customer spending patterns and redemption rates.

## Analysis Includes

- **Promotional Effectiveness**: Assesses how different promotional campaigns impact customer spending behavior and redemption rates.
- **Sales Analysis**: Analyzes total spending, unique customers, and total sales associated with various promotions.

- ## Skills Used

- **SQL**:
  - **Joins**: Utilized INNER JOIN and other types to combine data from multiple tables and derive insights.
  - **Aggregation Functions**: Used COUNT, SUM, and COUNT DISTINCT to summarize data and extract meaningful metrics.
  - **Grouping**: Employed GROUP BY to aggregate data based on promotions and spending patterns.
  - **Ordering**: Used ORDER BY to organize results for better readability.

- **Database Design**:
  - **Schema Creation**: Designed a relational database schema with tables such as Customers, Products, Sales, Feedback, and Promotions.
  - **Foreign Key Constraints**: Established relationships between tables to maintain data integrity.

- **Data Analysis**:
  - **Promotion Analysis**: Evaluated the impact of promotions on customer spending behavior and engagement.
  - **Sales Trends**: Analyzed sales data to identify trends related to promotional effectiveness.

## How This Analysis Can Help Businesses

This analysis provides actionable insights into how promotional campaigns influence customer spending patterns. By understanding these dynamics, businesses can optimize their promotional strategies, enhance customer engagement, and improve overall sales performance.

  # Retail Sales Analysis: Insights and Recommendations

## Overview

This project focuses on analyzing retail sales data to gain insights into customer purchase behavior and sales performance. The analysis aims to identify trends in product popularity, evaluate pricing strategies, and provide actionable recommendations based on the findings.

## Analysis Includes

- **Customer Segmentation**: Analyzes customer demographics and their relationship with purchase behavior.
- **Product Popularity**: Examines which products are selling well and why, providing insights into consumer preferences.
- **Sales Performance Evaluation**: Assesses the sales performance of various products based on transaction data.
- **Pricing Strategy Analysis**: Compares product prices to determine how price affects sales volume.
- **Customer Lifetime Value (CLV) Analysis**: Estimates the potential long-term revenue generated from customers based on their purchasing patterns.

## Skills Used

- **SQL**:
  - **Joins**: Utilized INNER JOIN to combine data from multiple tables for comprehensive analysis.
  - **Aggregation Functions**: Used SUM to summarize sales data and COUNT to analyze purchase frequency.
  - **Grouping**: Employed GROUP BY to aggregate data on product sales and customer transactions.
  - **Subqueries**: Incorporated subqueries to enhance query efficiency and clarity.

- **Database Design**:
  - **Schema Creation**: Designed a relational database schema with tables such as Customers, Products, Transactions, and Stores.
  - **Foreign Key Constraints**: Established relationships between tables to ensure data integrity.

- **Data Analysis**:
  - **Sales Analysis**: Evaluated product sales data to identify best-selling items and their pricing dynamics.
  - **Customer Analysis**: Analyzed customer data to understand purchasing behavior and segment customers effectively.
  - **Revenue Projection**: Calculated Customer Lifetime Value (CLV) to assess the potential revenue from customers.

## How This Analysis Can Help Businesses

This analysis provides valuable insights into customer behavior, product performance, and pricing strategies. By understanding these dynamics, businesses can optimize their marketing efforts, enhance product offerings, and make data-driven decisions to improve overall sales performance.- **Customer Insights**: Evaluates customer engagement with promotions based on spending patterns.


