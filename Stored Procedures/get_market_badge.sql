CREATE DEFINER=`root`@`localhost` PROCEDURE `get_market_badge`(
	IN in_market varchar(45),
    IN in_fiscal_year year,
    OUT out_badge varchar(45)
)
BEGIN
	DECLARE qty int default 0;
    
SELECT 
    SUM(sold_quantity)
INTO qty FROM
    fact_sales_monthly s
        JOIN
    dim_customer c ON s.customer_code = c.customer_code
WHERE
    GET_FISCAL_YEAR(s.date) = in_fiscal_year
        AND c.market = in_market
GROUP BY c.market;
    
    #determine market badge
    if qty > 5000000 then
    set out_badge = "Gold";
    else 
    set out_badge = "Silver";
    END if;
END