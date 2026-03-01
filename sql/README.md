# SQL Business Analysis Queries  
Atliq Hardware – Business Case Implementation

This folder contains SQL queries developed to solve real-world business problems using:

- Aggregations  
- Window Functions  
- CTEs  
- Views  
- Ranking Logic  
- Percentage Contribution Calculations  

These queries simulate practical analytics scenarios commonly used in business reporting and BI dashboards.

---

## Objective

The goal of these SQL scripts is to:

- Solve business-driven analytical problems
- Demonstrate use of Window Functions (RANK, DENSE_RANK, ROW_NUMBER)
- Compare CTE vs VIEW implementation
- Build scalable analytical logic
- Prepare dataset outputs ready for dashboarding tools

---

##  Business Case Implementations

### 1. Croma Sales Analysis

**croma_monthly_gross_sales.sql**  
Calculates monthly gross sales for Croma.

**croma_yearly_gross_sales.sql**  
Calculates yearly gross sales for Croma.

Use Case:
- Retail client performance tracking
- Revenue growth monitoring

---

### 2. Product-Level Analysis

**monthly_sales_At_product_level.sql**  
Monthly sales breakdown at product granularity.

Use Case:
- Product performance monitoring
- Demand pattern identification

---

### 3. Net Invoice Sales Calculation

**net_invoice_sales_using_CTE.sql**  
Calculates net invoice sales using Common Table Expressions.

**net_invoice_sales_using_VIEW.sql**  
Calculates net invoice sales using a database view.

Purpose:
- Demonstrates two implementation methods
- Shows modular and reusable SQL logic

---

### 4. Percentage Contribution Analysis

**pct_net_sales_by_customer.sql**  
Calculates percentage contribution of net sales by customer.

**pct_net_sales_by_region&customer.sql**  
Calculates percentage contribution by region and customer.

Use Case:
- Revenue concentration analysis
- Customer dependency analysis
- Regional contribution tracking

---

### 5. Top N Business Cases (Window Functions)

These scripts use ranking functions to solve real-world Top N problems.

**top_2_markets_per_region_by_gross_sales.sql**  
Top 2 markets in each region based on gross sales.

**top_3_products_per_division_by_qty_sold.sql**  
Top 3 products per division based on quantity sold.

**top_5_customer_by_net_sales.sql**  
Top 5 customers ranked by net sales.

**top_5_market_by_net_sales.sql**  
Top 5 markets ranked by net sales.

Techniques Used:
- RANK()
- DENSE_RANK()
- ROW_NUMBER()
- PARTITION BY
- ORDER BY

---

## How to Use?

1. Open SQL Server / Azure SQL / compatible database.
2. Run the script file.
3. Execute the query to generate results.
4. Integrate output into Power BI / Tableau / Excel dashboards.

---

## Skills Demonstrated

- Advanced SQL querying
- Window functions for ranking
- Business metric calculation
- Revenue contribution analysis
- Modular query structuring
- Comparative implementation (CTE vs VIEW)
- Analytical problem-solving

---

## Business Impact

These queries help answer:

- Who are the top revenue contributors?
- Which markets drive maximum sales?
- What products lead in quantity and revenue?
- How concentrated is revenue across customers?
- What is the monthly and yearly sales trend?

---

## Why This Matters

Top N and percentage contribution analysis are core requirements in:

- Management dashboards
- Board presentations
- Financial reporting
- Sales performance review
- Strategic planning

This folder demonstrates the ability to translate business questions into structured SQL solutions.
