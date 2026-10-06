SELECT customer_segment, COUNT(*) AS orders, SUM(net_sales) AS revenue,
SUM(profit) AS profit, ROUND(AVG(net_sales),2) AS avg_order_value
FROM sales_orders WHERE order_status <> 'Cancelled'
GROUP BY customer_segment ORDER BY revenue DESC;