# Fiscal Year & Fiscal Quarter Calculator (SQL UDF)

This folder contains SQL **User Defined Functions (UDFs)** to calculate:

- Fiscal Year  
- Fiscal Quarter  

These functions are useful for financial reporting, MIS dashboards, data warehousing, and business analytics scenarios where fiscal calendars differ from calendar years.

---

## Purpose

Many organizations follow a fiscal year that does not align with the calendar year (January–December).

Example structure (commonly used in India):

- Fiscal Year: April – March  
- Q1: April – June  
- Q2: July – September  
- Q3: October – December  
- Q4: January – March  

These SQL UDFs automate fiscal calculations directly inside the database, ensuring consistent reporting logic across dashboards and reports.

---

## Functions Overview

### 1. get_fiscal_year.sql

**Description:**  
Returns the fiscal year for a given input date.

**Example:**

Input: 2024-02-15

Output(if fiscal year starts in April): 2023

### 2. get_fiscal_quarter.sql

**Description:**  
Returns the fiscal quarter for a given input date.

**Example:**

Input: 2024-02-15

Output(if fiscal year starts in April): Q4

---

## How to Use?
- Open your SQL environment (SQL Server / Azure SQL / compatible system).
- Execute get_fiscal_year.sql.
- Execute get_fiscal_quarter.sql.
- Use the functions inside:
  - SELECT queries
  - Views
  - Stored Procedures
  - ETL pipelines
  - Power BI datasets

### Example in reporting query
<pre>
SELECT 
    order_date,
    dbo.get_fiscal_year(order_date) AS fiscal_year,
    dbo.get_fiscal_quarter(order_date) AS fiscal_quarter,
    sales_amount
FROM sales_table;
</pre>

### Customization

If your fiscal year does not start in April:
- Modify the month mapping logic inside the SQL functions.
- Adjust quarter classification accordingly.


