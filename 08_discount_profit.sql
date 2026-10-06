SELECT
CASE WHEN discount_pct < 5 THEN '<5%'
     WHEN discount_pct < 10 THEN '5-10%'
     WHEN discount_pct < 15 THEN '10-15%'
     ELSE '15%+' END AS discount_band,
COUNT(*) AS orders, SUM(net_sales) AS revenue, SUM(profit) AS profit
FROM sales_orders WHERE order_status <> 'Cancelled'
GROUP BY 1 ORDER BY 1;