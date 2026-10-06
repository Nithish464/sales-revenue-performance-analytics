SELECT DATE_TRUNC('month',order_date)::date AS month,
SUM(net_sales) AS revenue, SUM(profit) AS profit
FROM sales_orders GROUP BY 1 ORDER BY 1;