SELECT channel, COUNT(*) AS orders, SUM(net_sales) AS revenue,
SUM(profit) AS profit, ROUND(AVG(discount_pct),2) AS avg_discount_pct
FROM sales_orders GROUP BY channel ORDER BY revenue DESC;