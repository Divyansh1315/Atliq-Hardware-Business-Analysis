SELECT 
    *,
    (1 - pre_invoice_discount_pct) * gross_price_total AS net_invoice_sales,
    (po.discounts_pct + po.other_deductions_pct) AS post_invoice_discount_pct
FROM
    sales_preinv_discount s
        JOIN
    fact_post_invoice_deductions po ON s.date = po.date
        AND s.product_code = po.product_code
        AND s.customer_code = po.customer_code
;

