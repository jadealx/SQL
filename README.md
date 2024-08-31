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
- **Data Integration:** Used SQL to join customer and feedback data, providing a complete view of customer feedback.
- **Feedback Insights:** Implemented queries to calculate average ratings and count feedback entries for each rating level.
- **CTE Utilization:** Employed Common Table Expressions (CTEs) to simplify and streamline complex queries for better readability and performance.
- **Aggregation and Analysis:** Aggregated feedback data to identify common trends and understand overall customer satisfaction.

### Skills Used
- **SQL Queries:** Proficient use of SQL joins (INNER JOIN, LEFT JOIN) and aggregate functions (AVG, COUNT).
- **Common Table Expressions (CTEs):** Effective use of CTEs to manage and organize complex query logic.
- **Data Analysis:** Analyzed customer feedback to extract meaningful insights and trends.
- **Data Visualization (Optional):** Optionally included visualizations to represent feedback trends and ratings distribution.

### Impact
- **Enhanced Understanding:** Provided valuable insights into customer satisfaction and feedback trends, aiding in informed business decisions.
- **Improved Engagement:** Identified feedback patterns to improve customer experience and address common issues.

# Investment Analysis Project

## Overview
- Conducted an in-depth analysis of investment data across multiple portfolios.
- Utilized advanced SQL techniques including JOINs, CTEs, and aggregate functions.

### Key Insights
1. **Average Investment Value by Portfolio:**
   - Calculated the average value of investments within each portfolio as of the most recent performance date.
2. **Total Investment Value by Investor:**
   - Aggregated the total value of investments per investor, providing insights into individual investment behaviors.
3. **Investments with High Returns:**
   - Identified investments yielding returns greater than 10% as of the latest performance date.

### SQL Techniques Used
- **JOINS:** Linked data across `Investors`, `Portfolios`, `Investments`, and `Performance` tables.
- **Common Table Expressions (CTEs):** Simplified complex queries by breaking them down into manageable parts.
- **Subqueries:** Used subqueries to retrieve specific data points, such as the latest performance date for each investment.
- **Aggregate Functions:** Employed functions like `AVG` and `SUM` to calculate average and total values.
- **Filtering with LIKE and Wildcards (%):** Applied pattern matching to filter and analyze specific data entries.

### Business Application
- This analysis provides valuable insights for investment managers to understand portfolio performance, identify high-performing investments, and evaluate investor behaviors. These insights can inform strategic investment decisions, optimize portfolio management, and enhance investor relations.

# Grocery Store Rewards Program Analysis

## Overview

This project analyzes a grocery store's rewards program using SQL to assess its effectiveness and identify areas for improvement. The analysis examines customer engagement, spending patterns, and the effectiveness of various rewards.

## Analysis Includes

- **Points Distribution**: Counts the number of distinct customers who have earned points.
- **Customer Spending Analysis**: Identifies customers who spent more than $100 in a single transaction and earned points.
- **Most Redeemed Rewards**: Analyzes which rewards are redeemed most frequently.
- **Average Points Per Transaction**: Calculates the average points earned per transaction for customers spending over $50.
- **Spending Level Points Adjustment**: Categorizes transactions into spending levels and examines how points are distributed.
- **Promotion Effectiveness**: Assesses the impact of promotions and rewards on sales.
- **Product Performance**: Evaluates which products are associated with high-value transactions.

## Skills Used

- **SQL**:
  - **Joins**: Utilized INNER JOIN, LEFT JOIN, and other types to combine data from multiple tables and derive insights.
  - **Aggregation Functions**: Used COUNT, SUM, and AVG to summarize data and extract meaningful metrics.
  - **Grouping**: Employed GROUP BY to aggregate data on specific categories such as customers, rewards, and products.
  - **Conditional Logic**: Implemented CASE statements to classify spending levels and adjust points distribution based on transaction amounts.
  - **Window Functions**: Added a window function for advanced data insights, allowing for sophisticated comparisons and analysis.
  - **Subqueries**: Incorporated subqueries to filter and refine results, ensuring accuracy in the analysis.

- **Database Design**:
  - **Schema Creation**: Designed a relational database schema with tables such as Customers, Transactions, Rewards, Products, etc.
  - **Foreign Key Constraints**: Established relationships between tables to ensure data integrity.

- **Data Analysis**:
  - **Customer Behavior Analysis**: Analyzed spending patterns and reward redemption rates.
  - **Promotion Effectiveness**: Evaluated the impact of promotions on sales.
  - **Product Performance**: Identified top-performing products based on transaction value.

## How This Analysis Can Help Businesses

This analysis offers insights into customer engagement and spending behavior, helping businesses understand how effectively their rewards program is utilized. By identifying trends and areas for improvement, businesses can optimize their rewards offerings to better meet customer needs and enhance overall program effectiveness.


# Retail Product Launch and Promotion Effectiveness Analysis

## Overview

This project analyzes retail sales data to evaluate the effectiveness of product launches and promotions. Using SQL, the analysis examines how new product launches influence sales, the impact of promotions on sales performance, and insights from customer feedback.

## Analysis Includes

- **Product Launch Impact**: Examines how new product launches affect sales and customer feedback.
- **Promotional Effectiveness**: Assesses the effectiveness of promotions in driving sales and correlates with customer satisfaction.
- **Customer Feedback Analysis**: Analyzes customer reviews and ratings to understand their impact on sales trends.
- **Sales Trends**: Identifies overall sales patterns based on product categories and timeframes.
- **Feedback Sentiment Analysis**: Evaluates the sentiment of customer feedback and its influence on sales.

## Skills Used

- **SQL**:
  - **Joins**: Utilized INNER JOIN, LEFT JOIN, and other types to combine data from multiple tables and derive insights.
  - **Aggregation Functions**: Used COUNT, SUM, and AVG to summarize data and extract meaningful metrics.
  - **Grouping**: Employed GROUP BY to aggregate data on categories such as products, promotions, and customer feedback.
  - **Window Functions**: Applied window functions for advanced calculations and analysis, such as ranking and partitioning.
  - **Common Table Expressions (CTEs)**: Used CTEs to simplify complex queries and improve readability.
  - **Subqueries**: Incorporated subqueries to filter and refine results, ensuring accuracy in the analysis.

- **Database Design**:
  - **Schema Creation**: Designed a relational database schema with tables such as Customers, Products, Sales, Feedback, and Promotions.
  - **Foreign Key Constraints**: Established relationships between tables to maintain data integrity.

- **Data Analysis**:
  - **Product Launch Analysis**: Evaluated the impact of new product launches on sales and customer feedback.
  - **Promotion Analysis**: Assessed the effectiveness of promotions in driving sales and their correlation with customer satisfaction.
  - **Customer Feedback Analysis**: Analyzed customer reviews and ratings to identify trends and their impact on sales.

## How This Analysis Can Help Businesses

This analysis provides actionable insights into how product launches, promotions, and customer feedback impact sales and customer satisfaction. By understanding these dynamics, businesses can optimize their marketing strategies, improve product offerings, and enhance overall customer experiences.
