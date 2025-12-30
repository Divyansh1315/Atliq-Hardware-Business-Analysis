-- Individual Product sales ( aggregated on monthly basis at product code level)
-- Month
-- Product Name
-- Variant
-- Sold Quantity
-- Gross Price Per Item
-- Gross Price Total

use gdb0041;

SELECT 
    s.date,
    s.product_code,
    p.product,
    p.variant,
    s.sold_quantity,
    g.gross_price,
    g.gross_price*s.sold_quantity as gross_price_total
FROM
    fact_sales_monthly s
        JOIN
    dim_product p ON p.product_code = s.product_code
        JOIN
    fact_gross_price g ON g.product_code = s.product_code
        AND g.fiscal_year = GET_FISCAL_YEAR(s.date)
WHERE
    customer_code = 90002002
        AND GET_FISCAL_YEAR(date) = 2021
ORDER BY date ASC
LIMIT 1000000;
 
