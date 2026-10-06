SELECT EXTRACT(YEAR FROM order_date) AS year,
EXTRACT(QUARTER FROM order_date) AS quarter,
SUM(net_sales) AS revenue, SUM(profit) AS profit
FROM sales_orders GROUP BY 1,2 ORDER BY 1,2;