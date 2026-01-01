CREATE DEFINER=`root`@`localhost` PROCEDURE `get_monthly_gross_sales_for_customer`(
	in_customer_code TEXT
)
BEGIN
		SELECT 
			s.date,
			SUM(g.gross_price * s.sold_quantity) AS total_gross_sales
		FROM
			fact_sales_monthly s
				JOIN
			fact_gross_price g ON g.product_code = s.product_code
				AND g.fiscal_year = GET_FISCAL_YEAR(s.date)
		WHERE
			FIND_IN_SET(s.customer_code, in_customer_code) > 0
		GROUP BY s.date
		ORDER BY s.date ASC;
END