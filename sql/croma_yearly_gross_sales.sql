-- Croma Yearly Sales Report

-- Fiscal Year
-- Total Gross Sales amount in that year for Croma India

Select 
g.fiscal_year,
SUM(g.gross_price*s.sold_quantity) as total_gross_sales
From
fact_sales_monthly s
JOIN fact_gross_price g
ON g.product_code = s.product_code AND 
g.fiscal_year = get_fiscal_year(s.date)
Where customer_code = '90002002'
group by g.fiscal_year
order by g.fiscal_year asc;