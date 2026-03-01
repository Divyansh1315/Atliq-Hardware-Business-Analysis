# 📊 Fiscal Year & Fiscal Quarter Calculator (SQL UDF)

This folder contains SQL **User Defined Functions (UDFs)** to calculate:

- Fiscal Year  
- Fiscal Quarter  

These functions are useful for financial reporting, MIS dashboards, data warehousing, and business analytics scenarios where fiscal calendars differ from calendar years.

---

---

## 🎯 Purpose

Many organizations follow a fiscal year that does not align with the calendar year (January–December).

Example structure (commonly used in India):

- Fiscal Year: April – March  
- Q1: April – June  
- Q2: July – September  
- Q3: October – December  
- Q4: January – March  

These SQL UDFs automate fiscal calculations directly inside the database, ensuring consistent reporting logic across dashboards and reports.

---

## 🛠️ Functions Overview

### 1️⃣ get_fiscal_year.sql

**Description:**  
Returns the fiscal year for a given input date.

**Example:**

Input: 2024-02-15

Output(if fiscal year starts in April): 2023



