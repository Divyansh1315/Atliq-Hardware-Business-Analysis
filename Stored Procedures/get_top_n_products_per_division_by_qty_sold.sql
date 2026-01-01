CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_products_per_division_by_qty_sold`(
		in_fiscal_year INT,
        in_top_n INT
)
BEGIN
	with CTE1 as (
SELECT 
    p.division,
    p.product,
    sum(sold_quantity) as total_qty
FROM
    fact_sales_monthly s
        JOIN
    dim_product p ON p.product_code = s.product_code
    where fiscal_year = in_fiscal_year
    group by p.product, p.division
),

 CTE2 as(
Select *,
		dense_rank() OVER(partition by division order by total_qty desc) as drnk
from CTE1
)

Select * from cte2 where drnk <= in_top_n;


END