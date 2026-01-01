With CTE1 as (
SELECT 
    c.customer,
    c.region,
    ROUND(SUM(net_sales) / 1000000, 2) AS net_sales_mln
FROM
    net_sales_mat n
        JOIN
    dim_customer c ON c.customer_code = n.customer_code
WHERE
    fiscal_year = 2021
GROUP BY  c.region, c.customer )


SELECT *,
		net_sales_mln*100/SUM(net_sales_mln) OVER(partition by region) as pct
 from CTE1
ORDER BY region, net_sales_mln DESC;


