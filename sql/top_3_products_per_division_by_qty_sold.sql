with CTE1 as (
SELECT 
    p.division,
    p.product,
    sum(sold_quantity) as total_qty
FROM
    fact_sales_monthly s
        JOIN
    dim_product p ON p.product_code = s.product_code
    where fiscal_year = 2021
    group by p.product, p.division
),

 CTE2 as(
Select *,
		dense_rank() OVER(partition by division order by total_qty desc) as drnk
from CTE1
)

Select * from cte2 where drnk <= 3;


