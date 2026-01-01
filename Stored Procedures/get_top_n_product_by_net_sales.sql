CREATE DEFINER=`root`@`localhost` PROCEDURE `get_top_n_product_by_net_sales`(
	in_fiscal_year INT,
    in_top_n INT
)
BEGIN
	SELECT
    product,
    ROUND(SUM(net_sales)/1000000, 2) AS net_sales_mln
FROM net_sales_mat
WHERE fiscal_year = in_fiscal_year
GROUP BY product
ORDER BY SUM(net_sales) DESC
LIMIT in_top_n;
END