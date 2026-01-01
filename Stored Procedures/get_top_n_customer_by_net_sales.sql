CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_customer_by_net_sales`(
	in_fiscal_year INT,
    in_top_n INT
)
BEGIN
	SELECT 
    customer,
    ROUND(SUM(net_sales) / 1000000, 2) AS net_sales_mln
FROM
    net_sales_mat n
        JOIN
    dim_customer c ON c.customer_code = n.customer_code
WHERE
    fiscal_year = in_fiscal_year
GROUP BY c.customer
ORDER BY net_sales_mln DESC
LIMIT in_top_n;
END