SELECT
COUNT(*) AS total_orders,
SUM(net_sales) AS net_revenue,
SUM(profit) AS total_profit,
ROUND(AVG(net_sales),2) AS avg_order_value,
ROUND(100.0*SUM(profit)/NULLIF(SUM(net_sales),0),2) AS profit_margin_pct
FROM sales_orders WHERE order_status <> 'Cancelled';