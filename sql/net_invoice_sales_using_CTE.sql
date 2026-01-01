With CTE1 as (
SELECT 
    s.date,
    s.product_code,
    s.fiscal_year,
    s.customer_code,
    c.market,
    p.product,
    p.variant,
    s.sold_quantity,
    g.gross_price,
    ROUND(g.gross_price * s.sold_quantity, 2) AS gross_price_total,
    pre.pre_invoice_discount_pct
FROM
    fact_sales_monthly s
		JOIN 
	dim_customer c ON c.customer_code = s.customer_code
        JOIN
    dim_product p ON p.product_code = s.product_code
        JOIN
    fact_gross_price g ON g.product_code = s.product_code
        AND g.fiscal_year = s.fiscal_year
        JOIN
    fact_pre_invoice_deductions pre ON pre.customer_code = s.customer_code
        AND pre.fiscal_year = s.fiscal_year
WHERE
    s.fiscal_year = 2021
)

SELECT 
    *,
    (gross_price_total - gross_price_total * pre_invoice_discount_pct) AS net_invoice_sales
FROM
    CTE1
ORDER BY date ASC
LIMIT 1000000;

