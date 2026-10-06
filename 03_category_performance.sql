SELECT category, COUNT(*) AS orders, SUM(net_sales) AS revenue,
SUM(profit) AS profit, ROUND(100.0*SUM(profit)/NULLIF(SUM(net_sales),0),2) AS margin_pct
FROM sales_orders WHERE order_status <> 'Cancelled'
GROUP BY category ORDER BY revenue DESC;