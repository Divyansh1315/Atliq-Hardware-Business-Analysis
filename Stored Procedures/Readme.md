#  Stored Procedures – Atliq Hardware Business Analysis

This folder contains SQL Stored Procedures built for business analytics and reporting use cases.

These procedures are designed to simplify complex aggregations, enable reusable reporting logic, and support dashboard-ready outputs for decision-making.

---

##  Objective

The purpose of these stored procedures is to:

- Centralize business logic inside the database
- Improve query reusability
- Enhance performance over repeated ad-hoc queries
- Enable clean integration with BI tools (Power BI, Tableau, Excel)
- Support management-level reporting

---

##  Stored Procedures Overview

### 1. get_market_badge.sql

Returns market classification or badge based on defined business rules.

**Use Case:**
- Categorizing markets into performance tiers
- Strategic segmentation

---

### 2. get_monthly_gross_sales_for_customer.sql

Returns monthly gross sales aggregated for a specific customer.

**Use Case:**
- Customer performance tracking
- Revenue trend analysis

---

### 3. get_pct_net_sales_by_region.sql

Calculates percentage contribution of net sales by region.

**Use Case:**
- Regional performance comparison
- Market share analysis

---

### 4. get_top_n_customer_by_net_sales.sql

Returns top N customers ranked by net sales.

**Use Case:**
- Key account identification
- Revenue concentration analysis

---

### 5. get_top_n_market_by_net_sales.sql

Returns top N markets based on net sales.

**Use Case:**
- High-performing geography identification
- Strategic expansion decisions

---

### 6. get_top_n_product_by_net_sales.sql

Returns top N products ranked by net sales.

**Use Case:**
- Product performance analysis
- Portfolio optimization

---

### 7. get_top_n_products_per_division_by_qty_sold.sql

Returns top N products per division based on quantity sold.

**Use Case:**
- Division-level inventory planning
- Demand trend analysis

---

## Business Impact

These procedures enable:
- Faster reporting
- Clean separation of logic and visualization
- Scalable BI integration
- Reduced duplication of analytical queries
- Performance optimization through database-level computation

### Why Stored Procedures?

| Ad-hoc Queries           | Stored Procedures         |
| ------------------------ | ------------------------- |
| Rewritten multiple times | Reusable logic            |
| Hard to maintain         | Centralized management    |
| Slower execution         | Optimized execution plans |
| Prone to inconsistency   | Standardized outputs      |







