SELECT city, COUNT(*) AS orders, SUM(net_sales) AS revenue,
SUM(profit) AS profit
FROM sales_orders WHERE order_status <> 'Cancelled'
GROUP BY city ORDER BY revenue DESC;