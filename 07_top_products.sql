SELECT product, category, SUM(quantity) AS units,
SUM(net_sales) AS revenue, SUM(profit) AS profit
FROM sales_orders WHERE order_status <> 'Cancelled'
GROUP BY product, category ORDER BY revenue DESC LIMIT 15;