SELECT payment_method, COUNT(*) AS orders,
SUM(net_sales) AS revenue, ROUND(AVG(net_sales),2) AS avg_order_value
FROM sales_orders GROUP BY payment_method ORDER BY revenue DESC;