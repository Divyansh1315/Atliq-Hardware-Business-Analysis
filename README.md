# Atliq Hardware Business Analysis 📊
This repository contains a comprehensive **data analytics project** for Atliq Hardware — an end-to-end business analysis to uncover sales patterns, generate insights, and support data-driven decision-making.

The analysis heavily uses **SQL, Stored Procedures, Views, Excel reporting, and analytics logic**, with the goal of producing actionable insights and structured reports. The project includes queries fired against the database, stored procedures for reusable logic, and user-defined functions to support analytical calculations.

---

## 🔍 Project Overview

### 📌 Business Problem
Atliq Hardware operates multiple sales channels across regions and product lines but lacked structured insights into:

- How sales are trending over time
- Which markets contribute most to revenue
- Product performance and profitability

This project aims to organize, analyze, and visualize key business metrics to help leadership make **data-driven decisions** with confidence.

---

## 🗂️ Repository Structure
```text
Atliq-Hardware-Business-Analysis/
├── csv_files/                     # csv reports extracted from MySQL
├── Excel_reports/                 # Charts, pivot tables, and  analytical reports
├── Stored Procedures/             # Reusable SQL procedures for analytics
├── User Defined Function/         # SQL functions used for data transformation
├── Views/                         # SQL views created for simplifying analytics
├── sql/                           # SQL queries used for reporting
└── README.md                      # Project documentation
```
---

## 📊 Tools & Technologies

**Databases & Querying**
- MySQL Workbench 
- Views, Stored Procedures, User Defined Functions

**Reporting & Analysis**
- Microsoft Excel (Pivot Tables)
  

**Version Control**
- GitHub for project organization and sharing

---
## 📄 What You’ll Find

### SQL Queries (`sql/`)
All queries fired during the analytics phase, grouped and documented which are used for generating different business reports. See [`sql/README.md`](./sql/README.md) for details.

### Stored Procedures
Reusable logic and advanced analytical scripts stored as procedures.

### Views
Database views created to support repeated querying patterns.

### Excel Reports
Data exports, visual analysis, and presentation-ready reports in Excel format.

### Documentation
Both the **problem statement** and **secondary analysis** are included as PDF files for full project context.

---

## ❓ Business Questions Addressed

This project answers key business questions such as:

- Which markets contribute the highest net sales?
- How does sales performance vary across fiscal years?
- Which products and categories drive revenue?
- What are the top and bottom performing regions?
- How do sales trends evolve month-over-month?
Each business question maps to one or more SQL scripts in the `sql/`folder.

---

## 📊 Key Insights & Outcomes

- Identified top-performing markets contributing the majority of revenue
- Highlighted sales concentration risks across regions
- Analyzed product-level contribution to total net sales
- Enabled faster reporting through reusable views and procedures
<!-- - Improved clarity for stakeholders via Excel dashboards -->

---

## 📚 What I Learned

Through this project, I strengthened my understanding of:

- Writing efficient and readable SQL
- Exploratory Data analysis
- Using Views and Stored Procedures for scalable analytics
- Applying window functions and aggregations
- Structuring an analytics project for real business use
- Translating business requirements into data queries
<!-- - Presenting insights using Excel and Power Pivot -->

---

## 🛠️ How to Use

1. **Clone the repository**
   ```bash
   git clone https://github.com/Divyansh1315/Atliq-Hardware-Business-Analysis.git

2. **Set up the database**
- Load required Views, Stored Procedures, and User Defined Functions
- Use your MySQL environment (e.g., MySQL Workbench)

3. **Run SQL queries**
- Navigate to the `sql/` folder
- Execute relevant .sql files to generate datasets and reports

4. **Analyze results**
- Open files from `Excel_reports/`
- Explore pivot tables, Power Pivot models, and dashboards

--- 

## ✉️ Contact

For questions, suggestions, or collaboration, feel free to raise an issue or connect via GitHub.
