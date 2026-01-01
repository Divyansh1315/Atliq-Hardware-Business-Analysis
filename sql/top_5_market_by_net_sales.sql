
-- Query for top 5 customers by net sales
SELECT
    customer,
    ROUND(SUM(net_sales)/1000000, 2) AS net_sales_mln
FROM net_sales_mat n
JOIN dim_customer c ON c.customer_code = n.customer_code
WHERE fiscal_year = 2021
GROUP BY c.customer
ORDER BY net_sales_mln DESC
LIMIT 5;