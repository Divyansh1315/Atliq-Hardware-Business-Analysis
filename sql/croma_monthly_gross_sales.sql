-- Monthly gross sales report

-- Month
-- Total Gross sales to Croma India

Select 
s.date,
SUM(g.gross_price*s.sold_quantity) as total_gross_sales
From fact_sales_monthly s
join fact_gross_price g 
on g.product_code = s.product_code and
g.fiscal_year = get_fiscal_year(s.date)
Where customer_code = '90002002'
group by s.date
order by s.date asc;
