CREATE DEFINER=`root`@`localhost` PROCEDURE `get_pct_net_sales_by_region`(
		in_region varchar(35),
        in_year INT
)
BEGIN
With CTE1 as (
SELECT 
    customer,
    ROUND(SUM(net_sales) / 1000000, 2) AS net_sales_mln
FROM
    net_sales_mat n
        JOIN
    dim_customer c ON c.customer_code = n.customer_code
WHERE
    fiscal_year = in_year and region = in_region
GROUP BY  customer )

SELECT *,
		net_sales_mln*100/SUM(net_sales_mln) OVER() as pct
 from CTE1
ORDER BY net_sales_mln DESC;
END